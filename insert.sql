-- borrower_type
insert into borrowertype (name,max_borrow) values ('personnel',10);
insert into borrowertype (name,max_borrow) values ('professionnel',5) ;
insert into borrowertype (name,max_borrow) values ('public',3) ;

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
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DUPOND','Marcel','4 rue des etoiles 86000 Poitiers', 0501020304, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('MARTIN','Rene','4 rue des etoiles 86000 Poitiers', 0511121314, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DELAROCHE','Yves','3 av du pissenlit 86180 Buxerolles', 0521222324, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('TOUTAFAIT','Andre','5 rue des vaches 16000 Angoulême', 0531323334, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('CASGRAIN','Anais','91 avenue Jean Portalis 10000 TROYES', 0382175591, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('BRODEUR','Brunella','11 rue de la Mare aux Carats 92120 MONTROUGE', 0138770071, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DIONNE','Belle','68 rue Michel Ange 94270 LE KREMLIN-BICÊTRE', 0132760051, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DUBEAU','Brice','85 rue Cazade 93700 DRANCY', 0113776565, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LANOIE','Percy','31 rue Grande Fusterie 91220 BRÉTIGNY-SUR-ORGE', 0178645807, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('TISSERAND','Stéphane','56 rue du Président Roosevelt 49400 SAUMUR', 0238509583, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('AGRICAN','Marjorie','16 rue des Chaligny 06200 NICE', 0422695920, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('FAUCHER','Pierrette','67 rue du Clair Bocage 83160 LA VALETTE-DU-VAR', 0483719985, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('BRoCCOLI','Pierrette','40 avenue de l''Amandier 93140 BONDY', 0186882714, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LEBEL','Roland','23 Rue Joseph Vernet 93170 BAGNOLET', 0149085467, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LEMAITRE','Phillipe',' 81 rue Gustave Eiffel 91000 RIS-ORANGIS', 0179507726, 'professionnel') ;

-- theme
insert into theme (name) values ('informatique') ;
insert into theme (name) values ('mathematique') ;
insert into theme (name) values ('ocean') ;
insert into theme (name) values ('foret') ;
insert into theme (name) values ('musique') ;

-- keyword
insert into keyword (name) values ('sql') ;
insert into keyword (name) values ('pl/sql') ;
insert into keyword (name) values ('entite') ;
insert into keyword (name) values ('cube') ;
insert into keyword (name) values ('erable') ;
insert into keyword (name) values ('loutre') ;
insert into keyword (name) values ('lamentin') ;

-- publisher
insert into publisher (name,address,phone) values ('Eyrolles','1 rue Thénard 75005 Paris',0144411174) ;
insert into publisher (name,address,phone) values ('Dunod','11 Rue Paul Bert 92240 Malakoff',0141236600) ;
insert into publisher (name,address,phone) values ('Larousse','21 Rue du Montparnasse 75283 Paris',0144394400) ;
insert into publisher (name,address,phone) values ('Gallimard','5 Rue Gaston Gallimard 75007 Paris',0149544200) ;

-- shelf
insert into shelf (shelf_num,remaining_slots) values (1,30) ;
insert into shelf (shelf_num,remaining_slots) values (2,25) ;
insert into shelf (shelf_num,remaining_slots) values (3,28) ;

-- author



-- document

insert into document(title,id_publisher,type) values ('Le Seigneur des Anneaux',4,'book');
insert into document(title,id_publisher,theme,type) values ('Vingt Mille Lieues sous les mers',2,'ocean','book');
insert into document(title,id_publisher,theme,type) values ('SQL pour les nuls',3,'informatique','book');
insert into document(title,id_publisher,theme,type) values ('Apprendre le C++',3,'informatique','book');
insert into document(title,id_publisher,theme,type) values ('Mathématiques discrètes et combinatoire',3,'mathematique','book');
insert into document(title,id_publisher,theme,type) values ('Stadium Arcadium', ,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('The Works', ,'musique','cd');
insert into document(title,id_publisher,type) values ('Fight Club', ,'dvd');
insert into document(title,id_publisher,type) values ('Gladiator', ,'dvd');
insert into document(title,id_publisher,type) values ('Star Wars IV', ,'dvd');
insert into document(title,id_publisher,type) values ('Star Wars V', ,'dvd');
insert into document(title,id_publisher,type) values ('Star Wars VI', ,'dvd');
insert into document(title,theme,type) values ('Loutre', 'ocean','video');
insert into document(title,theme,type) values ('Configurer Symfony', 'informatique','video');
insert into document(title,theme,type) values ('AVL tree', 'mathematique','video');

-- book

insert into book (id_document,pages_nb)
values (1, 1390);
insert into book (id_document,pages_nb)
values (2, 364);
insert into book (id_document,pages_nb)
values (3, 215);
insert into book (id_document,pages_nb)
values (4, 495);
insert into book (id_document,pages_nb)
values (5, 179);

-- cd
insert into cd (id_document,duration,subtitles_nb)
values (6,168,3);
insert into cd (id_document,duration,subtitles_nb)
values (7,851,3);
-- dvd
insert into dvd (id_document,duration)
values (8,1465)

-- video

-- author_document

-- keyword_document

-- copy

-- borrow
