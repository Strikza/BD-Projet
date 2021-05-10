alter TABLE shelf 
add CONSTRAINT CK_shelf_max check (remaining_slots BETWEEN 0 and 30);

alter table document
add constraint CK_document_title check (title is not null);

alter table borrow
add constraint CK_borrow_date check (borrowed_date is not null);

alter table borrowtime
add constraint CK_borrow_time check (borrow_time is not null);

-- créé la date de retour automatiquement + vérifie que la date de retour et correcte
CREATE or replace trigger trig_borrow_max_date
before insert OR UPDATE of return_date
on borrow for EACH row
DECLARE type_doc document.type%type;
BEGIN
    select type 
    into type_doc 
    from document
    inner join copy on copy.id_document = document.id
    where copy.id = :New.id_copy;
    
    select ((bot.borrow_time*7) + :New.borrowed_date)
    into :new.max_return_date
    from borrowertype bt, borrower b, borrowtime bot
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name
    and bot.borrower_type = bt.name
    and bot.doc_type = type_doc;
    
    if :new.return_date is not null and :new.max_return_date < :new.return_date
    then raise_application_error('-20001', 'Vous avez dépassé la date limite d emprunt pour ce document');
    end if;
end;
/

-- vérifie que l'on n'a pas atteint le nombre maximum d'emprunts
CREATE or replace trigger trig_borrow_max_borrow
before insert or update of borrowed_date
on borrow for EACH row
DECLARE 
max_b borrowertype.max_borrow%type;
current_b number;
BEGIN
select borrowertype.max_borrow
into max_b
from borrowertype
inner join borrower on borrower.borrower_type = borrowertype.name
where borrower.id = :new.id_borrower;
select count(*)
into current_b
from borrow
where :new.id_borrower = id_borrower
and return_date is null;
if current_b + 1 > max_b
then raise_application_error('-20001', 'Vous devez rendre un document avant de pouvoir emprunter celui-la');
end if;
end;
/


-- vérifie que le doc que l'on veut emprunter n'est pas déjà pris
CREATE or replace trigger trig_borrow_doc_already_borrowed
before insert OR UPDATE of id_copy
on borrow for EACH row
DECLARE
already_borrowed NUMBER;
BEGIN
select count(id_copy)
into already_borrowed
from borrow
where :new.id_copy = borrow.id_copy
and borrow.return_date is null;
if already_borrowed > 0
then raise_application_error('-20001', 'Ce document est déjà emprunté.');
end if;
Exception
when NO_DATA_FOUND then already_borrowed := 0;
end;
/



-- vérifie lors de l'ajout d'un doc dans un rayon qu'il y ait de la place + décrémente la place dans le rayon
CREATE or replace trigger trig_shelf_num
before insert or update
on copy for EACH row
DECLARE new_num shelf.remaining_slots%type;
BEGIN
select remaining_slots -1 
into new_num
from shelf
where shelf.shelf_num = :new.shelf_num;
if new_num < 0
then raise_application_error('-20001', 'Il n y a plus de place dans le rayon');
else UPDATE shelf
    set remaining_slots = remaining_slots -1
    where :new.shelf_num = shelf.shelf_num;
end if;
end;
/

-- incrémente la place dans le rayon quand un doc est supprimé 
CREATE or replace trigger trig_shelf_num
before delete
on copy for EACH row
BEGIN
UPDATE shelf
set remaining_slots = remaining_slots + 1
where :new.shelf_num = shelf.shelf_num;
end;
/








