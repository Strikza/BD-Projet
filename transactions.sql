
SET AUTOCOMMIT OFF;

-- transaction dans borrower

-- ajout
LOCK TABLE borrower IN SHARE MODE
insert into borrower(last_name,first_name,address,phone,borrower_type)
values ('nom','prenom','address',0011223344,'PUBLIC');
commit;

-- suppresion
select *
from borrower 
where id = 5 for update;
delete from borrower where id = 5;
commit;

-- transaction dans document

-- ajout
savepoint ajout_doc;
lock table document in share mode;
-- insert document
-- insert book
-- insert authorducument
-- si probleme rollback to ajout_doc
commit;

-- suppression 
select *
from document 
where id = 1 for update;
commit;

-- transaction dans borrow
-- ajout
lock table borrow in share mode;
commit;

-- suppression 
select *
from borrow 
where id = 1 for update;
commit;


