
SET AUTOCOMMIT OFF;

-- transaction dans borrower
-- ajout
LOCK TABLE borrower IN SHARE ROW EXCLUSIVE MODE
insert into borrower(last_name,first_name,address,phone,borrower_type)
values ('nom','prenom','address',0011223344,'PUBLIC');
commit;

-- suppresion
LOCK TABLE borrower IN SHARE ROW EXCLUSIVE MODE
delete from borrower where id = 5;
commit;

