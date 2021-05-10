-- Q.1
-- le thème doit contenir informatique donc il faut une wildcard au début et à la fin. 
-- donc on ne peut pas optimiser la requête avec un index

-- Q.2
create index idx_borrower_lastname on borrower(last_name);
create index idx_borrow_borroweddate on borrow(borrowed_date);


-- Q.3
-- cette requete crée une jointure entre 6 tables. Elle est difficilement optimisable en l'état.
-- C'est une requête qui peut permettre d'accéder à de nombreuses informations intéressantes et qui pourrait être éxécuter plusieurs fois.
-- Par conséquent, nous créons une vue matérialisée pour éviter de recalculer cette jointure à chaque fois.

create materialized view borrower_title_author
tablespace users
build immediate
refresh complete
enable query rewrite
as 
    select distinct bwer.last_name borrower, doc.title, ath.last_name author
    from Document doc, Copy cp, Borrow bw, Borrower bwer, AuthorDocument athDoc, Author ath
    where ath.id = athDoc.id_author
        and athDoc.id_document = doc.id
        and doc.id = cp.id_document
        and cp.id = bw.id_copy
        and bw.id_borrower = bwer.id;


-- Q.4
create index publisher_name on publisher(upper(name)); 

-- Q.5
-- reutilisation de publisher_name
create index copy_id_doc on copy(id_document);

-- Q.6
create index idx_publisher_id_name on publisher(id,name);
create index idx_document_publisher on document(id_publisher);


-- Q.7
create index idx_document_id_title on document(id,title);


-- Q.8
create bitmap index bidx_document_theme on document(upper(theme));


-- Q.9
-- On reprend l'index sur l'attribut last_name de la requête n°2, et on en créé un autre sur l'adresse de Borrower
create index idx_borrower_address on borrower(address);

-- Q.10
-- reutilisation de l'index sur le theme des document et de l'index sur l'id et le nom de l'éditeur

-- Q.11
-- pas d'optimisations possibles

-- Q.11
-- Pas d'optimisation

-- Q.12
-- rien

-- Q.13
create bitmap index bidx_borrower_type on borrower(upper(borrower_type));
create bitmap index bidx_document_type on document(upper(type));

-- Q.14
-- réutilisé l'index sur l'id et le titre du document
-- faire une vue concrete sur le count

-- Q.15
-- réutilisation de l'index bitmap sur le thème

-- Q.16
-- faire une vue sur le count 

-- Q.17
-- réutilisation de l'index sur l'id et le titre du document

-- Q.18
-- réutilisation de l'index sur l'id et le titre du document

-- Q.19
-- réutilisation de l'index sur l'id et le titre du document

-- Q.20
-- réutilisation de l'index sur l'id et le titre du document
