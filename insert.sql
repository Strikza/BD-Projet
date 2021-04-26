-- borrower_type
insert into borrowertype (name,max_borrow) values ('personnel',10);
insert into borrowertype (name,maw_borrow) values ('professionnel',5) ;
insert into borrowertype (name,maw_borrow) values ('public',3) ;

-- type
insert into type (name) values ('book') ;
insert into type (name) values ('cd') ;
insert into type (name) values ('dvd') ;
insert into type (name) values ('video') ;

-- borrow_time
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('personnel','book',9) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('personnel','cd',5) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('personnel','dvd',4) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('personnel','video',3) ;

insert into borrowtime (borrower_type,doc_type,borrow_time) values ('professionnel','book',11) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('professionnel','cd',4) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('professionnel','dvd',3) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('professionnel','video',2) ;

insert into borrowtime (borrower_type,doc_type,borrow_time) values ('public','book',3) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('public','cd',3) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('public','dvd',2) ;
insert into borrowtime (borrower_type,doc_type,borrow_time) values ('public','video',1) ;

-- borrower
insert into borrower (id,last_name,first_name,address,phone,borrower_type)
values (1,'Dupond','Marcel','4 rue des etoiles', 0501020304, 'public') ;
insert into borrower (id,last_name,first_name,address,phone,borrower_type)
values (2,'Martin','Rene','4 rue des etoiles', 0511121314, 'public') ;
insert into borrower (id,last_name,first_name,address,phone,borrower_type)
values (3,'DeLaRoche','Ives','3 av du pissenlit', 0521222324, 'public') ;
insert into borrower (id,last_name,first_name,address,phone,borrower_type)
values (4,'Toutafait','Andre','5 rue des vaches', 0531323334, 'personnel') ;

-- theme
insert into theme (name) values ('informatique') ;
insert into theme (name) values ('mathematique') ;
insert into theme (name) values ('ocean') ;
insert into theme (name) values ('foret') ;

-- keyword
insert into keyword (name) values ('sql') ;
insert into keyword (name) values ('pl/sql') ;
insert into keyword (name) values ('entite') ;
insert into keyword (name) values ('cube') ;
insert into keyword (name) values ('erable') ;
insert into keyword (name) values ('loutre') ;
insert into keyword (name) values ('lamentin') ;

-- publisher
insert into publisher (id,name,address,phone) values (1,'Eyrolles','8 route jaunes',0601020304) ;
insert into publisher (id,name,address,phone) values (2,'Dunot','45 rue des dangers',0611121314) ;

-- shelf
insert into shelf (shelf_num,remaining_slots) values (1,30) ;
insert into shelf (shelf_num,remaining_slots) values (2,25) ;
insert into shelf (shelf_num,remaining_slots) values (3,28) ;

-- author

-- document

-- book
-- cd
-- dvd
-- video

-- author_document

-- keyword_document

-- copy

-- borrow
