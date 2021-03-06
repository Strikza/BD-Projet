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
values ('DUPONT','Marcel','4 rue des etoiles 86000 Poitiers', 0501020304, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('MARTIN','Rene','4 rue des etoiles 86000 Poitiers', 0511121314, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DELAROCHE','Yves','3 av du pissenlit 86180 Buxerolles', 0521222324, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('TOUTAFAIT','Andre','5 rue des vaches 16000 Angoul??me', 0531323334, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('CASGRAIN','Anais','91 avenue Jean Portalis 10000 TROYES', 0382175591, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('BRODEUR','Brunella','11 rue de la Mare aux Carats 92120 MONTROUGE', 0138770071, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DIONNE','Belle','68 rue Michel Ange 94270 LE KREMLIN-BIC??TRE', 0132760051, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('DUBEAU','Brice','85 rue Cazade 93700 DRANCY', 0113776565, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LANOIE','Percy','31 rue Grande Fusterie 91220 BR??TIGNY-SUR-ORGE', 0178645807, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('TISSERAND','St??phane','56 rue du Pr??sident Roosevelt 49400 SAUMUR', 0238509583, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('AGRICAN','Marjorie','16 rue des Chaligny 06200 NICE', 0422695920, 'professionnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('FAUCHER','Pierrette','67 rue du Clair Bocage 83160 LA VALETTE-DU-VAR', 0483719985, 'personnel') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('BROCCOLI','Pierrette','40 avenue de l''Amandier 93140 BONDY', 0186882714, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LEBEL','Roland','23 Rue Joseph Vernet 93170 BAGNOLET', 0149085467, 'public') ;
insert into borrower (last_name,first_name,address,phone,borrower_type)
values ('LEMAITRE','Phillipe','81 rue Gustave Eiffel 91000 RIS-ORANGIS', 0179507726, 'professionnel') ;

-- theme
insert into theme (name) values ('informatique') ;
insert into theme (name) values ('mathematiques') ;
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
insert into publisher (name,address,phone) values ('Eyrolles','1 rue Th??nard 75005 Paris',0144411174) ;
insert into publisher (name,address,phone) values ('Dunod','11 Rue Paul Bert 92240 Malakoff',0141236600) ;
insert into publisher (name,address,phone) values ('Larousse','21 Rue du Montparnasse 75283 Paris',0144394400) ;
insert into publisher (name,address,phone) values ('Gallimard','5 Rue Gaston Gallimard 75007 Paris',0149544200) ;
insert into publisher (name) values ('Youtube');
insert into publisher (name,address) values ('Fnac','9 rue Bateaux-Lavoir');

-- shelf
insert into shelf (shelf_num,remaining_slots) values (1,30) ;
insert into shelf (shelf_num,remaining_slots) values (2,25) ;
insert into shelf (shelf_num,remaining_slots) values (3,28) ;
insert into shelf (shelf_num,remaining_slots) values (4,15) ;

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
insert into document(title,id_publisher,theme,type) values ('Math??matiques discr??tes et combinatoire',3,'mathematiques','book');
insert into document(title,id_publisher,theme,type) values ('Stadium Arcadium',6,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('The Works',6,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('Fight Club',6,'thriller','dvd');
insert into document(title,id_publisher,theme,type) values ('Gladiator',6,'heroique','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars IV',6,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars V',6 ,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Star Wars VI',6,'espace','dvd');
insert into document(title,id_publisher,theme,type) values ('Loutre',5,'ocean','video');
insert into document(title,id_publisher,theme,type) values ('Configurer Symfony',5,'informatique','video');
insert into document(title,id_publisher,theme,type) values ('AVL tree',5,'mathematiques','video');
insert into document(title,id_publisher,theme,type) values ('Oracle SQL Introduction',5,'informatique','video');
insert into document(title,id_publisher,theme,type) values ('Database',6,'musique','cd');
insert into document(title,id_publisher,theme,type) values ('SQL',3,'informatique','book');
insert into document(title,id_publisher,theme,type) values ('Informatique',1,'informatique','book');

-- book
insert into book (id_document,pages_nb) values (1, 1390);
insert into book (id_document,pages_nb) values (2, 364);
insert into book (id_document,pages_nb) values (3, 215);
insert into book (id_document,pages_nb) values (4, 495);
insert into book (id_document,pages_nb) values (5, 179);
insert into book (id_document,pages_nb) values (18, 32);
insert into book (id_document,pages_nb) values (19, 2390);

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
insert into authordocument (id_document,id_author) values (19,18);

-- keyword_document
insert into keyworddocument (keyword_name,id_document) values ('chevalier',1);
insert into keyworddocument (keyword_name,id_document) values ('lamentin',2);
insert into keyworddocument (keyword_name,id_document) values ('sql',3);
insert into keyworddocument (keyword_name,id_document) values ('entite',3);
insert into keyworddocument (keyword_name,id_document) values ('database',3);
insert into keyworddocument (keyword_name,id_document) values ('ensemble',5);
insert into keyworddocument (keyword_name,id_document) values ('pl/sql',16);
insert into keyworddocument (keyword_name,id_document) values ('sql',16);
insert into keyworddocument (keyword_name,id_document) values ('entite',16);
insert into keyworddocument (keyword_name,id_document) values ('database',16);
insert into keyworddocument (keyword_name,id_document) values ('database',17);
insert into keyworddocument (keyword_name,id_document) values ('sql',18);
insert into keyworddocument (keyword_name,id_document) values ('entite',18);
insert into keyworddocument (keyword_name,id_document) values ('database',18);

-- copy
insert into copy (id_document,shelf_num) values (1,1);
insert into copy (id_document,shelf_num) values (1,1);
insert into copy (id_document,shelf_num) values (1,1);
insert into copy (id_document,shelf_num) values (2,1);
insert into copy (id_document,shelf_num) values (2,1);
insert into copy (id_document,shelf_num) values (3,1);
insert into copy (id_document,shelf_num) values (4,1);
insert into copy (id_document,shelf_num) values (4,1);
insert into copy (id_document,shelf_num) values (5,1);
insert into copy (id_document,shelf_num) values (18,1);
insert into copy (id_document,shelf_num) values (18,1);
insert into copy (id_document,shelf_num) values (19,1);
insert into copy (id_document,shelf_num) values (19,1);

insert into copy (id_document,shelf_num) values (6,2);
insert into copy (id_document,shelf_num) values (6,2);
insert into copy (id_document,shelf_num) values (6,2);
insert into copy (id_document,shelf_num) values (7,2);
insert into copy (id_document,shelf_num) values (7,2);
insert into copy (id_document,shelf_num) values (7,2);
insert into copy (id_document,shelf_num) values (7,2);
insert into copy (id_document,shelf_num) values (17,2);
insert into copy (id_document,shelf_num) values (17,2);

insert into copy (id_document,shelf_num) values (8,3);
insert into copy (id_document,shelf_num) values (9,3);
insert into copy (id_document,shelf_num) values (10,3);
insert into copy (id_document,shelf_num) values (10,3);
insert into copy (id_document,shelf_num) values (11,3);
insert into copy (id_document,shelf_num) values (11,3);
insert into copy (id_document,shelf_num) values (12,3);
insert into copy (id_document,shelf_num) values (12,3);

insert into copy (id_document,shelf_num) values (13,4);
insert into copy (id_document,shelf_num) values (14,4);
insert into copy (id_document,shelf_num) values (15,4);
insert into copy (id_document,shelf_num) values (16,4);
insert into copy (id_document,shelf_num) values (16,4);

-- borrow
insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (1,1,to_date('15/12/2018','dd/mm/yyyy'),to_date('23/12/2018','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (3,8,to_date('5/5/2015','dd/mm/yyyy'),to_date('26/5/2015','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (6,4,to_date('23/8/2020','dd/mm/yyyy'),to_date('12/9/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (9,3,to_date('19/11/2019','dd/mm/yyyy'),to_date('26/11/2019','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (12,1,to_date('13/1/2018','dd/mm/yyyy'),to_date('28/1/2018','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (13,10,to_date('02/02/2020','dd/mm/yyyy'),to_date('23/02/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (5,13,to_date('9/8/2017','dd/mm/yyyy'),to_date('16/8/2017','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (1,2,to_date('15/04/2019','dd/mm/yyyy'),to_date('26/04/2019','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (1,3,to_date('03/06/2020','dd/mm/yyyy'),to_date('15/06/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (14,1,to_date('09/10/2019','dd/mm/yyyy'),to_date('17/10/2019','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (7,4,to_date('18/01/2019','dd/mm/yyyy'),to_date('26/01/2019','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (8,3,to_date('23/04/2020','dd/mm/yyyy'),to_date('08/05/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (12,11,to_date('09/02/2017','dd/mm/yyyy'),to_date('21/02/2017','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (11,10,to_date('06/03/2020','dd/mm/yyyy'),to_date('20/03/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (7,6,to_date('08/12/2020','dd/mm/yyyy'),to_date('12/12/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date)
values (2,10,to_date('08/12/2020','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date)
values (4,1,to_date('01/02/2021','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date)
values (5,1,to_date('01/02/2021','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date)
values (12,1,to_date('01/02/2021','dd/mm/yyyy'));

insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (24,5,to_date('08/03/2021','dd/mm/yyyy'),to_date('24/03/2021','dd/mm/yyyy'));

-- tests trigger

-- rendre un doc en retard
insert into borrow (id_copy,id_borrower,borrowed_date,return_date)
values (2,10,to_date('08/12/2020','dd/mm/yyyy'),to_date('13/04/2021','dd/mm/yyyy'));

-- prendre un doc deja pris
insert into borrow (id_copy,id_borrower,borrowed_date)
values (2,11,to_date('12/12/2020','dd/mm/yyyy'));

-- max emprunt
insert into borrow (id_copy,id_borrower,borrowed_date)
values (1,1,to_date('01/02/2021','dd/mm/yyyy'));
