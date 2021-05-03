-- Q.4
create index publisher_name on publisher(upper(name)); 

-- Q.5
-- reutilisation de publisher_name
create index copy_id_doc on copy(id_document);

-- Q.10
create index document_theme on document(upper(theme));

-- Q.12
-- rien

-- Q.13
create index borrower_type on borrower(upper(borrower_type));
create index document_type on document(upper(type));

-- Q.16
-- faire une vue sur le count ?