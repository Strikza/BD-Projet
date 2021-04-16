CREATE TABLE Document (
  id int,
  title varchar2(100),
  id_publisher int,
  theme varchar2(50)
);

CREATE TABLE Publisher (
  id int,
  name varchar2(100),
  address varchar2(100),
  phone varchar2(15)
);

CREATE TABLE Copy (
  id int,
  id_document int,
  shelf_num int
);

CREATE TABLE Borrower (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  address varchar2(100),
  phone varchar2(15),
  borrower_type varchar2(100)
);

CREATE TABLE Keyword (
  name varchar2(50)
);

CREATE TABLE shelf (
  shelf_num int,
  remaining_slots int
);

CREATE TABLE Author_Document (
  id_document int,
  id_author int
);

CREATE TABLE Borrower_type (
  name varchar2(100),
  max_borrow int,
  book_time int,
  cd_time int,
  dvd_time int,
  video_time int
);

CREATE TABLE Book (
  id_document int,
  pages_nb int
);

CREATE TABLE Borrow (
  id_copy int,
  id_borrower int,
  borrowed_date date,
  max_return_date date,
  return_date date
);

CREATE TABLE CD (
  id_document int,
  duration time,
  subtitles_nb int
);

CREATE TABLE Author (
  id int,
  last_name varchar2(100),
  first_name varchar2(100),
  birthday date
);

CREATE TABLE Keyword_Document (
  Keyword_name varchar2(50),
  id_document int
);

CREATE TABLE Video (
  id_document int,
  duration time,
  format varchar2(5)
);

CREATE TABLE Theme (
  name varchar2(50)
);

CREATE TABLE DVD (
  id_document int,
  duration time
);
