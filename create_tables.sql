CREATE TABLE Document (
  id <type>,
  title <type>,
  publisher <type>,
  theme <type>
);

CREATE TABLE Publisher (
  id <type>,
  name <type>,
  address <type>,
  phone <type>
);

CREATE TABLE Copy (
  id <type>,
  id_document <type>,
  shelf_num <type>
);

CREATE TABLE Borrower (
  id <type>,
  last_name <type>,
  first_name <type>,
  address <type>,
  phone <type>,
  borrower_type <type>
);

CREATE TABLE Keyword (
  name <type>
);

CREATE TABLE shelf (
  shelf_num <type>,
  remaining_slots <type>
);

CREATE TABLE Author_Document (
  id_document <type>,
  id_author <type>
);

CREATE TABLE Borrower_type (
  name <type>,
  max_borrow <type>,
  book_time <type>,
  cd_time <type>,
  dvd_time <type>,
  video_time <type>
);

CREATE TABLE Book (
  id_document <type>,
  pages_nb <type>
);

CREATE TABLE Borrow (
  id_copy <type>,
  id_borrower <type>,
  borrowed_date <type>,
  max_return_date <type>,
  return_date <type>
);

CREATE TABLE CD (
  id_document <type>,
  duration <type>,
  subtitles_nb <type>
);

CREATE TABLE Author (
  id <type>,
  last_name <type>,
  first_name <type>,
  birthday <type>
);

CREATE TABLE Keyword_Document (
  Keyword_name <type>,
  id_document <type>
);

CREATE TABLE Video (
  id_document <type>,
  duration <type>,
  format <type>
);

CREATE TABLE Theme (
  name <type>
);

CREATE TABLE DVD (
  id_document <type>,
  duration <type>
);
