alter TABLE shelf 
add CONSTRAINT CK_shelf_max check (remaining_slots BETWEEN 0 and 30);

alter table document
add constraint CK_document_title check (title is not null);

alter table borrow
add constraint CK_borrow_date check (borrowed_date is not null);

CREATE or replace trigger trig_borrow_max_date
before insert OR UPDATE 
on borrow for EACH row
DECLARE type_doc document.type%type;
BEGIN
select upper(type) 
into type_doc 
from document
inner join copy on copy.id_document = document.id
where copy.id = :New.id_copy;
    select (bot.borrow_time + :New.borrowed_date)
    into :new.max_return_date
    from borrowertype bt, borrower b, borrowtime bot
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name
    and bot.borrower_type = bt.name
    and upper(bot.doc_type) = type_doc;
end;
/

CREATE or replace trigger trig_borrow_after_date_return
before insert OR UPDATE 
on borrow for EACH row
DECLARE 
date_max borrow.max_return_date%type;
date_return borrow.return_date%type;
BEGIN
select max_return_date,return_date
into date_max,date_return
from borrow
where borrow.id_borrower = :new.id_borrower;
if (date_return is null and date_max < sysdate) 
then raise_application_error('-20001', 'Vous avez dépasser la date limite d emprunt pour un document');
end if;
end;
/


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
then raise_application_error('-20001', 'il n y a plus de place dans le rayon');
else UPDATE shelf
    set remaining_slots = remaining_slots -1
    where :new.shelf_num = shelf.shelf_num;
end if;
end;
/

CREATE or replace trigger trig_borrow_max_borrow
before insert or update
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
where :new.id_borrower = id_borrower;
if current_b + 1 > max_b
then raise_application_error('-20001', 'vous devez rendre un document avant de pouvoir emprunter celui-la');
end if;
end;
/


CREATE or replace trigger trig_borrow_doc_already_borrowed
before insert OR UPDATE 
on borrow for EACH row
DECLARE
already_borrowed borrow.id_copy%type;
BEGIN
select id_copy
into already_borrowed
from borrow
where :new.id_copy = borrow.id_copy
and borrow.return_date is not null;
if already_borrowed is not null
then raise_application_error('-20001', 'Ce document est deja emprunté.');
end if;
end;
/