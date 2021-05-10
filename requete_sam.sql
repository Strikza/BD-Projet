-- 2 : Liste (titre et thème) des documents empruntés par Dupond entre le 15/11/2018 et le 15/11/2019
select distinct doc.title, doc.theme
from Document doc, Copy cp, Borrow bw, Borrower bwer
    where bwer.id = bw.id_borrower
    and bw.id_copy = cp.id
    and cp.id_document = doc.id
    and bwer.last_name = 'DUPOND'
    and bw.borrowed_date between to_date('15/11/2018', 'dd/mm/yyyy') 
                             and to_date('15/11/2019', 'dd/mm/yyyy');

-- 3 : Pour chaque emprunteur, donner la liste des titres des documents qu'il a empruntés avec le nom des auteurs pour chaque document
select distinct bwer.last_name borrower, doc.title, ath.last_name author
from Document doc, Copy cp, Borrow bw, Borrower bwer, AuthorDocument athDoc, Author ath
    where ath.id = athDoc.id_author
    and athDoc.id_document = doc.id
    and doc.id = cp.id_document
    and cp.id = bw.id_copy
    and bw.id_borrower = bwer.id;

-- 7 : Pour chaque document, nombre de fois où il a été emprunté
select doc.id, doc.title, count(*) nb_borrow
from Document doc, Copy cp, Borrow bw
where doc.id = cp.id_document
and cp.id = bw.id_copy
group by (doc.id,doc.title);

-- 9 : Noms des emprunteurs habitant la même adresse que Dupond
select distinct bwer.last_name, bwer.first_name
from Borrower duppond, Borrower bwer
where duppond.last_name = 'DUPOND'
and bwer.address = duppond.address;

-- 11 : Noms des personnes n'ayant jamais emprunté de documents
select bwer.last_name, bwer.first_name
from Borrower bwer
where bwer.id not in (select distinct bw.id_borrower from Borrow bw);

-- 15 : Noms des auteurs ayant écrit des documents d'informatique et de mathématiques (ceux qui ont écrit les deux)
select distinct a.id, a.last_name, a.first_name
from author a, authordocument ad, document d
where a.id = ad.id_author
and ad.id_document = d.id
and upper(d.theme) = 'INFORMATIQUE'
intersect
select distinct a.id, a.last_name, a.first_name
from author a, authordocument ad, document d
where a.id = ad.id_author
and ad.id_document = d.id
and upper(d.theme) = 'MATHEMATIQUES';
-- 20 : Liste des documents ayant exactement les mêmes mot-clef que le document dont le titre est "SQL pour les nuls"

