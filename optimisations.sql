-- Q.1
-- le thème doit contenir informatique donc il faut une wildcard au début et à la fin. 
-- donc on ne peut pas optimiser la requête avec un index

-- Q.2
-- On créé 2 index. L'un sur l'attribut last_name de Borrower, et l'autre sur l'attribut borrowed_date de Borrow

-- Q.3
-- Aucune optimisation. Mais il est possible de créer une vue concrète, pour calculer parcourir une seul fois les tables

-- Q.4
create index publisher_name on publisher(upper(name)); 

-- Q.5
-- reutilisation de publisher_name
create index copy_id_doc on copy(id_document);

-- Q.6
-- pas d'optimisations possibles

-- Q.7
-- Pas d'optimisation

-- Q.8
create bitmap index bidx_document_theme on document(theme);

-- Q.9
-- On reprend l'index sur l'attribut last_name de la requête n°2, et on en créé un autre sur l'adresse de Borrower

-- Q.10
-- reutilisation de l'index sur le theme des document

-- Q.11
-- Pas d'optimisation

-- Q.12
-- rien

-- Q.13
create bitmap index bidx_borrower_type on borrower(upper(borrower_type));
create bitmap index bidx_document_type on document(upper(type));

-- Q.14
-- faire une vue concrete sur le count

-- Q.15
-- On créé un index bitmap sur les thèmes

-- Q.16
-- faire une vue sur le count ?

-- Q.17
create index idx_document_title on document(title);

-- Q.18
-- réutilisation de l'index sur le titre

-- Q.19
-- réutilisation de l'index sur le titre

-- Q.20
-- réutilisation de l'index sur le titre
