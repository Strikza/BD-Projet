alter TABLE shelf 
add CONSTRAINT ck_shelf_max check (remaining_slots BETWEEN 0 and 30);

alter table document
add constraint ck_document_type check (title is not null);


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
if (type_doc = 'BOOK')
then 
    select (bt.book_time + :New.borrowed_date)
    into :new.max_return_date
    from borrowertype bt, borrower b
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name;
elsif (type_doc = 'DVD') 
then 
    select (bt.dvd_time + :New.borrowed_date)
    into :new.max_return_date
    from borrowertype bt, borrower b
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name;
elsif (type_doc = 'CD') 
then 
    select (bt.cd_time + :New.max_return_date)
    into :new.max_return_date
    from borrowertype bt, borrower b
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name;
elsif (type_doc = 'VIDEO') 
then 
    select (bt.dvd_time + :New.max_return_date)
    into :new.max_return_date
    from borrowertype bt, borrower b
    where :New.id_borrower = b.id
    and b.borrower_type = bt.name;  
end if;
end;
/


