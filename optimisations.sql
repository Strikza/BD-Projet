-- Q.1
-- le thème doit contenir informatique donc il faut une wildcard au début et à la fin. 
-- donc on ne peut pas optimiser la requête avec un index

-- Q.4
create index publisher_name on publisher(upper(name)); 

-- Q.5
-- reutilisation de publisher_name
create index copy_id_doc on copy(id_document);

-- Q.6
-- pas d'optimisations possibles

-- Q.8
create bitmap index bidx_document_theme on document(theme);

-- Q.10
-- reutilisation de l'index sur le theme des document

-- Q.12
-- rien

-- Q.13
create bitmap index bidx_borrower_type on borrower(upper(borrower_type));
create bitmap index bidx_document_type on document(upper(type));

-- Q.14
-- faire une vue concrete sur le count

-- Q.16
-- faire une vue sur le count ?

-- Q.17
create index idx_document_title on document(title);

-- Q.18
-- réutilisation de l'index sur le titre

-- Q.19
-- réutilisation de l'index sur le titre
