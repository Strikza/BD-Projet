CREATE TABLE Type (
  name varchar2(30),
  constraint PK_Type primary key (name)
);

CREATE TABLE Document (
  id int,
  title varchar2(100),
  id_publisher int,
  theme varchar2(50),
  type varchar2(30),
  constraint PK_Document primary key (id),
  constraint FK_Document_Publisher foreign key (id_publisher) references Publisher(id),
  constraint FK_Document_Theme foreign key (theme) references Theme(name)
  constraint FK_Document_Type foreign key (type) references Type(name)
);

CREATE TABLE Publisher (
  id int,
  name varchar2(100),
  address varchar2(100),
  phone varchar2(15),
  constraint PK_Publisher primary key (id)
);

CREATE TABLE Author (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  birthday date,
  constraint PK_Author primary key (id)
);

CREATE TABLE AuthorDocument (
  id_document int,
  id_author int,
  constraint PK_AuthorDocument primary key (id_document, id_author),
  constraint FK_AuthorDocument_Author foreign key (id_author) references Author(id),
  constraint FK_AuthorDocument_Document foreign key (id_document) references Document(id)
);

CREATE TABLE Keyword (
  name varchar2(50),
  constraint PK_Keyword primary key (name)
);

CREATE TABLE KeywordDocument (
  Keyword_name varchar2(50),
  id_document int,
  constraint PK_KeywordDocument primary key (Keyword_name, id_document),
  constraint FK_KeywordDocument_Keyword foreign key (keyword_name) references Keyword(name),
  constraint FK_KeywordDocument_Document foreign key (id_document) references Document(id)
);

CREATE TABLE Theme (
  name varchar2(50),
  constraint PK_Theme primary key (name)
);

drop table document cascade constraints;
CREATE TABLE Book (
  id_document int,
  pages_nb int,
  constraint PK_Book primary key (id_document),
  constraint FK_Book_Document foreign key (id_document) references Document(id) on delete cascade
);

CREATE TABLE CD (
  id_document int,
  duration int,
  subtitles_nb int,
  constraint PK_CD primary key (id_document),
  constraint FK_CD_Document foreign key (id_document) references Document(id) on delete cascade
);

CREATE TABLE DVD (
  id_document int,
  duration int,
  constraint PK_DVD primary key (id_document),
  constraint FK_DVD_Document foreign key (id_document) references Document(id) on delete cascade
);

CREATE TABLE Video (
  id_document int,
  duration int,
  format varchar2(5),
  constraint PK_Video primary key (id_document),
  constraint FK_Video_Document foreign key (id_document) references Document(id) on delete cascade
);

CREATE TABLE Copy (
  id int,
  id_document int,
  shelf_num int,
  constraint PK_Copy primary key (id),
  constraint FK_Copy_Document foreign key (id_document) references Document(id)
);

CREATE TABLE Shelf (
  shelf_num int,
  remaining_slots int,
  constraint PK_Shelf primary key (shelf_num)
);

CREATE TABLE Borrower (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  address varchar2(100),
  phone varchar2(15),
  borrower_type varchar2(100),
  constraint PK_Borrower primary key (id),
  constraint FK_Borrower_Borrowertype foreign key (borrower_type) references Borrowertype(name)
);

CREATE TABLE Borrowertype (
  name varchar2(100),
  max_borrow int,
  book_time int,
  cd_time int,
  dvd_time int,
  video_time int,
  constraint PK_Borrower_type primary key (name)
);

CREATE TABLE Borrow (
  id_copy int,
  id_borrower int,
  borrowed_date date,
  max_return_date date,
  return_date date,
  constraint PK_Borrow primary key (id_copy, id_borrower, borrowed_date),
  constraint FK_Borrow_Copy foreign key (id_copy) references Copy(id),
  constraint FK_Borrow_Borrower foreign key (id_borrower) references Borrower(id)
);






