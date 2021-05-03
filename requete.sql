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



