drop table type;
CREATE TABLE Type (
  name varchar2(30),
  constraint PK_Type primary key (name)
);



drop table publisher;
CREATE TABLE Publisher (
  id int,
  name varchar2(100),
  address varchar2(100),
  phone varchar2(15),
  constraint PK_Publisher primary key (id)
);

drop sequence seq_publisher;
create SEQUENCE seq_publisher;

create or replace trigger trig_publisher
before insert on Publisher for each row
begin
select seq_publisher.nextval into :new.id from dual;
end;
/

drop table author;
CREATE TABLE Author (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  birthday date,
  constraint PK_Author primary key (id)
);

drop sequence seq_author;
create SEQUENCE seq_author;

create or replace trigger trig_author
before insert on Author for each row
begin
select seq_author.nextval into :new.id from dual;
end;
/

drop table keyword;
CREATE TABLE Keyword (
  name varchar2(50),
  constraint PK_Keyword primary key (name)
);

drop table theme;
CREATE TABLE Theme (
  name varchar2(50),
  constraint PK_Theme primary key (name)
);

drop table shelf;
CREATE TABLE Shelf (
  shelf_num int,
  remaining_slots int,
  constraint PK_Shelf primary key (shelf_num)
);

drop table borrowertype;
CREATE TABLE Borrowertype (
  name varchar2(100),
  max_borrow int,
  constraint PK_Borrower_type primary key (name)
);

drop table borrowtime;
CREATE TABLE BorrowTime (
  borrower_type varchar2(100),
  doc_type varchar2(30),
  borrow_time int,
  constraint PK_BorrowerTime primary key (borrower_type,doc_type),
  constraint FK_BorrowerTime_Type foreign key (borrower_type) references Type(name) on delete cascade,
  constraint FK_BorrowerTime_BorrowerTyme foreign key (doc_type) references BorrowerType(name) on delete cascade
);

drop table document;
CREATE TABLE Document (
  id int,
  title varchar2(100),
  id_publisher int,
  theme varchar2(50),
  type varchar2(30),
  constraint PK_Document primary key (id),
  constraint FK_Document_Publisher foreign key (id_publisher) references Publisher(id) on delete set null,
  constraint FK_Document_Theme foreign key (theme) references Theme(name) on delete set null,
  constraint FK_Document_Type foreign key (type) references Type(name) on delete cascade
);

drop sequence seq_document;
create SEQUENCE seq_document;

create or replace trigger trig_document
before insert on Document for each row
begin
select seq_document.nextval into :new.id from dual;
end;
/

drop table authordocument;
CREATE TABLE AuthorDocument (
  id_document int,
  id_author int,
  constraint PK_AuthorDocument primary key (id_document, id_author),
  constraint FK_AuthorDocument_Author foreign key (id_author) references Author(id) on delete set null,
  constraint FK_AuthorDocument_Document foreign key (id_document) references Document(id) on delete set null
);


drop table keyworddocument;
CREATE TABLE KeywordDocument (
  Keyword_name varchar2(50),
  id_document int,
  constraint PK_KeywordDocument primary key (Keyword_name, id_document),
  constraint FK_KeywordDocument_Keyword foreign key (keyword_name) references Keyword(name) on delete set null,
  constraint FK_KeywordDocument_Document foreign key (id_document) references Document(id) on delete cascade
);

drop table book;
CREATE TABLE Book (
  id_document int,
  pages_nb int,
  constraint PK_Book primary key (id_document),
  constraint FK_Book_Document foreign key (id_document) references Document(id) on delete cascade
);

drop table cd;
CREATE TABLE CD (
  id_document int,
  duration int,
  subtitles_nb int,
  constraint PK_CD primary key (id_document),
  constraint FK_CD_Document foreign key (id_document) references Document(id) on delete cascade
);

drop table dvd;
CREATE TABLE DVD (
  id_document int,
  duration int,
  constraint PK_DVD primary key (id_document),
  constraint FK_DVD_Document foreign key (id_document) references Document(id) on delete cascade
);

drop table video;
CREATE TABLE Video (
  id_document int,
  duration int,
  format varchar2(5),
  constraint PK_Video primary key (id_document),
  constraint FK_Video_Document foreign key (id_document) references Document(id) on delete cascade
);

drop table copy;
CREATE TABLE Copy (
  id int,
  id_document int,
  shelf_num int,
  constraint PK_Copy primary key (id),
  constraint FK_Copy_Document foreign key (id_document) references Document(id) on delete cascade,
  constraint FK_Copy_Shelf foreign key (shelf_num) references Shelf(shelf_num) on delete set null
);

drop sequence seq_copy;
create SEQUENCE seq_copy;

create or replace trigger trig_copy
before insert on Copy for each row
begin
select seq_copy.nextval into :new.id from dual;
end;
/

drop table borrower;
CREATE TABLE Borrower (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  address varchar2(100),
  phone varchar2(15),
  borrower_type varchar2(100),
  constraint PK_Borrower primary key (id),
  constraint FK_Borrower_Borrowertype foreign key (borrower_type) references Borrowertype(name) on delete set null
);

drop sequence seq_borrower;
create SEQUENCE seq_borrower;

create or replace trigger trig_borrwer
before insert on Borrower for each row
begin
select seq_borrower.nextval into :new.id from dual;
end;
/

drop table borrow;
CREATE TABLE Borrow (
  id_copy int,
  id_borrower int,
  borrowed_date date,
  max_return_date date,
  return_date date,
  constraint PK_Borrow primary key (id_copy, id_borrower, borrowed_date),
  constraint FK_Borrow_Copy foreign key (id_copy) references Copy(id) on delete set null,
  constraint FK_Borrow_Borrower foreign key (id_borrower) references Borrower(id) on delete set null
);






