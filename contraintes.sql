alter TABLE shelf 
add CONSTRAINT CK_shelf_max check (remaining_slots BETWEEN 0 and 30);

alter table document
add constraint CK_document_type check (title is not null);


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
    and bot.doc_type = type_doc;
end;
/