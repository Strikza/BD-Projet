-- 1 : Liste par ordre alphabétique des titres de documents dont le thème comprend le mot informatique ou mathématiques.
select title
from document
where theme like '%informatique%'
order by title asc
;

-- 4 : Noms des auteurs ayant �crit un livre �dit� chez Dunod. Attention :
-- cette requ�te est � ex�cuter sur la base d'un autre coll�gue qui doit vous autoriser
-- � lire certaines tables (uniquement celles qui sont utiles pour la requ�te)

create role collegue;
grant collegue to utiliateur2;
grant select on ProjetL3.Author to collegue;
grant select on ProjetL3.Authordocument to collegue;
grant select on ProjetL3.Publisher to collegue;

select a.last_name, a.first_name
from ProjetL3.author a, ProjetL3.authordocument ad, ProjetL3.document d, ProjetL3.publisher p
where a.id = ad.id_author
and ad.id_document = d.id
and d.id_publisher = p.id
and upper(p.name) = 'DUNOD';

-- 5 : Quantit� totale des exemplaires �dit�s chez Eyrolles
select count(*) as total
from publisher p, document d, copy c
where p.id = d.id_publisher
and c.id_document = d.id
and upper(p.name) = 'EYROLLES';

-- 6 : Pour chaque éditeur, nombre de documents présents à la bibliothèque.
select publisher.name, count(publisher.id) as nb_doc
from publisher, document
where publisher.id = document.id_publisher
group by publisher.name
;

--8 : Liste des éditeurs ayant édité plus de deux documents d'informatique ou de mathématiques.
select id_publisher, name
from document, publisher
where publisher.id = document.id_publisher
and theme like 'informatique' or theme like 'mathematiques'
group by id_publisher,name
having count(id_publisher) > 2
;


-- 10 : Liste des �diteurs n'ayant pas �dit� de documents d'informatique
select id, name
from publisher
where id not in (select id_publisher
      	     	from document
                where upper(theme) = 'INFORMATIQUE');

-- 12 : Liste des documents n'ayant jamais �t� emprunt�s
select id,title
from document
where id not in (select distinct c.id_document
      	     	from copy c, borrow b
		where c.id = b.id_copy);

-- 13 : Donnez la liste des emprunteurs (nom, pr�nom) appartenant � la cat�gorie
-- des professionnels ayant emprunt� au moins une fois un dvd au cours des 6 derniers mois.
select last_name, first_name
from borrower
where upper(borrower_type) = 'PROFESSIONNEL'
and id in (select b.id_borrower
       	  from borrow b, copy c, document d, dual
          where b.id_copy = c.id
	      and c.id_document = d.id
	      and upper(d.type) = 'DVD'
	      and b.borrowed_date >= sysdate - 182);

--14 : Liste des documents dont le nombre d'exemplaires est supérieur au nombre moyend'exemplaires.
select document.id, document.title
from copy, document
where copy.id_document = document.id
group by (document.id, document.title)
having count(copy.id_document) > (
                                select avg(count(*)) nb
                                from copy
                                group by (id_document)
                                )
;


-- 16 : �diteur dont le nombre de documents emprunt�s est le plus grand.
select p.id, p.name
from publisher p, document d, copy c, borrow b
where p.id = d.id_publisher
and d.id = c.id_document
and c.id = b.id_copy
group by (p.id,p.name)
having count(b.id_copy) = (select max(count(*))
                        from borrow b, copy c, document d
                        where b.id_copy = c.id
                        and c.id_document = d.id
                        group by (d.id_publisher));


-- 17 : Liste des documents n'ayant aucun mot-clef en commun avec le document dont le titre est "SQL pour les nuls".
select *
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and keyword.name  not in (
select name
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and document.title = 'SQL pour les nuls'
)
;

-- 18 : Liste des documents ayant au moins un mot-clef en commun avec le document dont le titre est"SQL pour les nuls".
select *
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and keyword.name  in (
select name
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and document.title = 'SQL pour les nuls'
)
;

-- 19 : Liste des documents ayant au moins les mêmes mot-clef que le document dont le titre est "SQL pour les nuls".
with keyw as (
select name k
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and document.title = 'SQL pour les nuls'
)
select DISTINCT document.id, document.title
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and keyword.name  in (select k from keyw)
group by (document.id,document.title)
having count(distinct keyword.name) >= (select count(distinct k) from keyw)
;

-- 20
with keyw as (
select name k
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and document.title = 'SQL pour les nuls'
), docmatch as (
select document.id
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
and keyword.name  in (select k from keyw)
)
select document.id, document.title
from document, keyword, keyworddocument
where document.id = keyworddocument.id_document
and keyword.name = keyworddocument.keyword_name
group by (document.id,document.title)
having count(*) = (select count(distinct k) from keyw)
;

