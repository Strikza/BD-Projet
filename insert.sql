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
insert into theme (name) values ('heroique');
insert into theme (name) values ('musique') ;
insert into theme (name) values ('espace');
insert into theme (name) values ('thriller');

-- keyword
insert into keyword (name) values ('sql') ;
insert into keyword (name) values ('pl/sql') ;
insert into keyword (name) values ('entite') ;
insert into keyword (name) values ('cube') ;
insert into keyword (name) values ('chevalier') ;
insert into keyword (name) values ('loutre') ;
insert into keyword (name) values ('lamentin') ;
insert into keyword (name) values ('anthiquite');
insert into keyword (name) values ('jedi');
insert into keyword (name) values ('ensemble');
insert into keyword (name) values ('database');

-- publisher
insert into publisher (name,address,phone) values ('Eyrolles','1 rue Thénard 75005 Paris',0144411174) ;
insert into publisher (name,address,phone) values ('Dunod','11 Rue Paul Bert 92240 Malakoff',0141236600) ;
insert into publisher (name,address,phone) values ('Larousse','21 Rue du Montparnasse 75283 Paris',0144394400) ;
insert into publisher (name,address,phone) values ('Gallimard','5 Rue Gaston Gallimard 75007 Paris',0149544200) ;
insert into publisher (name) values ('Youtube');

-- shelf
insert into shelf (shelf_num,remaining_slots) values (1,30) ;
insert into shelf (shelf_num,remaining_slots) values (2,25) ;
insert into shelf (shelf_num,remaining_slots) values (3,28) ;

-- author
insert into author (last_name,first_name,birthday)
values ('Tolkien','J.R.R.',to_date('03/01/1892','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Verne','Jules',to_date('08/02/1828','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Taylor','Allen',to_date('30/09/1945','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Lucas','George',to_date('14/05/1944','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Mercury','Freddie',to_date('05/09/1946','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('May','Brian',to_date('19/07/1947','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Taylor','Roger',to_date('26/07/1949','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Deacon','John',to_date('19/08/1951','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Kiedis','Anthony',to_date('01/11/1962','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Rubin','Rick',to_date('10/03/1963','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Fincher','David',to_date('28/08/1962','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Scott','Ridley',to_date('30/11/1937','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Nebra','Mathieu',to_date('05/08/1985','dd/mm/yyyy'));
insert into author (last_name,first_name,birthday)
values ('Cohen','Gilles',to_date('15/08/1963','dd/mm/yyyy'));
insert into author (last_name,first_name)
values ('Thomas','Edouard');
insert into author (last_name,first_name)
values ('Jouon','Samuel');
insert into author (last_name,first_name)
values ('Chamla','Lior');
insert into author (last_name,first_name)
values ('Bari','Abdul');
insert into author (last_name,first_name)
values ('Tanaka','Tokyo');
insert into author (last_name,first_name,birthday)
values ('Grand','Rene',to_date('16/05/1970','dd/mm/yyyy'));

-- document
insert into document(title,id_publisher,theme,type) values ('Le Seigneur des Anneaux',4,'heroique','book');
insert into document(title,id_publisher,theme,type) values ('Vingt Mille Lieues sous les mers',2,'ocean','book');
insert into document(title,id_publisher,theme,type) values ('SQL pour les nuls',3,'informatique','book');
insert into document(title,id_publisher,theme,type) values ('Apprendre le C++',3,'informatique','book');
insert into document(title,id_publisher,theme,type) values ('Mathématiques discrètes et combinatoire',3,'mathematique','book');
insert into document(title,id_publisher,theme,type) values ('Stadium Arcadium', ,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('The Works', ,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('Fight Club', ,'thriller','dvd');
insert into document(title,id_publisher,theme,type) values ('Gladiator', ,'heroique','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars IV', ,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars V', ,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars VI', ,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Loutre',5,'ocean','video');
insert into document(title,id_publisher,theme,type) values ('Configurer Symfony',5,'informatique','video');
insert into document(title,id_publisher,theme,type) values ('AVL tree',5,'mathematique','video');
insert into document(title,id_publisher,theme,type) values ('Oracle SQL Introduction',5,'informatique','video');
insert into document(title,id_publisher,theme,type) values ('Database',,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('SQL',3,'informatique','book');

-- book
insert into book (id_document,pages_nb) values (1, 1390);
insert into book (id_document,pages_nb) values (2, 364);
insert into book (id_document,pages_nb) values (3, 215);
insert into book (id_document,pages_nb) values (4, 495);
insert into book (id_document,pages_nb) values (5, 179);
insert into book (id_document,pages_nb) values (18, 32);

-- cd
insert into cd (id_document,duration,subtitles_nb) values (6,168,3);
insert into cd (id_document,duration,subtitles_nb) values (7,851,3);
insert into cd (id_document,duration,subtitles_nb) values (17,255,2);

-- dvd
insert into dvd (id_document,duration) values (8,139);
insert into dvd (id_document,duration) values (9,155);
insert into dvd (id_document,duration) values (10,121);
insert into dvd (id_document,duration) values (11,124);
insert into dvd (id_document,duration) values (12,134);

-- video
insert into video (id_document,duration,format) values (13,60,'mp4');
insert into video (id_document,duration,format) values (14,7200,'mp4');
insert into video (id_document,duration,format) values (15,2588,'mp4');
insert into video (id_document,duration,format) values (16,3006,'mp4');

-- author_document
insert into authordocument (id_document,id_author) values (1,1);
insert into authordocument (id_document,id_author) values (2,2);
insert into authordocument (id_document,id_author) values (3,3);
insert into authordocument (id_document,id_author) values (4,13);
insert into authordocument (id_document,id_author) values (5,14);
insert into authordocument (id_document,id_author) values (5,15);
insert into authordocument (id_document,id_author) values (6,9);
insert into authordocument (id_document,id_author) values (6,10);
insert into authordocument (id_document,id_author) values (7,5);
insert into authordocument (id_document,id_author) values (7,6);
insert into authordocument (id_document,id_author) values (7,7);
insert into authordocument (id_document,id_author) values (7,8);
insert into authordocument (id_document,id_author) values (8,11);
insert into authordocument (id_document,id_author) values (9,12);
insert into authordocument (id_document,id_author) values (10,4);
insert into authordocument (id_document,id_author) values (11,4);
insert into authordocument (id_document,id_author) values (12,4);
insert into authordocument (id_document,id_author) values (13,16);
insert into authordocument (id_document,id_author) values (14,17);
insert into authordocument (id_document,id_author) values (15,18);
insert into authordocument (id_document,id_author) values (16,20);
insert into authordocument (id_document,id_author) values (17,19);
insert into authordocument (id_document,id_author) values (18,3);

-- keyword_document
insert into keyworddocument (keyword_name,id_document) values (1,'chavalier');
insert into keyworddocument (keyword_name,id_document) values (2,'lamentin');
insert into keyworddocument (keyword_name,id_document) values (3,'sql');
insert into keyworddocument (keyword_name,id_document) values (3,'entite');
insert into keyworddocument (keyword_name,id_document) values (3,'database');
insert into keyworddocument (keyword_name,id_document) values (5,'ensemble');
insert into keyworddocument (keyword_name,id_document) values (16,'pl/sql');
insert into keyworddocument (keyword_name,id_document) values (16,'sql');
insert into keyworddocument (keyword_name,id_document) values (3,'entite');
insert into keyworddocument (keyword_name,id_document) values (17,'database');
insert into keyworddocument (keyword_name,id_document) values (18,'sql');
insert into keyworddocument (keyword_name,id_document) values (18,'entite');
insert into keyworddocument (keyword_name,id_document) values (18,'database');

-- copy

-- borrow
