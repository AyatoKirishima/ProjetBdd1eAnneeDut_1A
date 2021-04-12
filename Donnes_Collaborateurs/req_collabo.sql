/* Not my work */
/* Req 2*/
CREATE temporary table t1
select session.no_session , no_adh "nombre d'inscrit1"
from session , inscrit1
where session.no_session=inscrit1.no_session
group by session.no_session
having count(inscrit1.no_adh)
;
create temporary table t2
select session.no_session , 0
from session
where session.no_session NOT IN(
select session.no_session
from t1
)
;
select *
from t1
UNION
select *
from t2 

/* Req 4 */
SELECT adherent.no_adh, nom_adh
from adherent,type_adh, employe, inscrit2, session
where adherent.no_type_adh=type_adh.no_type_adh
and nom_type_adh="entreprise"
and year(date_deb)='2019'
and employe.no_adh=adherent.no_adh
and employe.no_emp=inscrit2.no_emp
and inscrit2.no_session=session.no_session
group by adherent.no_adh
and NOT EXISTS(
    SELECT no_theme
    FROM theme
    where no_theme not in(
        SELECT session.no_theme
        from session
        where year(date_deb)='2019'    
    ))

/* Req 5 */
select theme.no_theme, theme.lib_theme
from theme, session s1, session s2, session s3
where year(s1.date_deb)='2020'
and theme.no_theme=s1.no_theme
and year(s2.date_deb)='2019'
and theme.no_theme=s2.no_theme
and year(s3.date_deb)='2018'
and theme.no_theme=s3.no_theme

/* Req 6 */
select Distinct(anime.no_anim), nom_anim
from session, anime, animateur
where session.no_session=anime.no_session
and anime.no_anim=animateur.no_anim
and  not exists (
    select no_anim
    from animateur
    where no_anim not in(
        select anime.no_anim
        from animateur, session, theme, anime
        where theme.no_theme=session.no_theme
        and lib_theme="base de donnees"
        and year(date_deb)='2018' or year(date_deb)='2019'
        and session.no_session=anime.no_session))

/* Req 7 */
create temporary table t1
select session.no_session, prime, taux_heure, anime.nb_heures
from session,anime
where year(date_sal)='2020'
and session.no_session=anime.no_session;

create temporary table t2
select SUM(prime) n1
from t1
;
create temporary table t3
select Sum(taux_heure*nb_heures)n2
from t1
;
create temporary table t4
select *
from t2 , t3
;
select n1 "somme des primes" , SUM((n1*100)/(n1+n2)) "% des primes", n2 "somme des heures", SUM((n2*100)/(n1+n2)) "% des heures"
from t4

/* Req 8 */
CREATE TEMPORARY TABLE req1
SELECT s.no_session,SUM(prix+(nb_heures*taux_heure)+prime)d
FROM session s,anime a
WHERE s.no_session = a.no_session
AND (year(date_deb)=2019)
GROUP BY no_session
;
CREATE TEMPORARY TABLE tab2
SELECT COUNT(*)n1,R1.no_session,R1.d
FROM req1 R1,req1 R2
WHERE R1.d <= R2.d
GROUP BY R1.no_session,R1.d
;
CREATE TEMPORARY TABLE T3
SELECT d,COUNT(*)n2
FROM req1
GROUP BY d
;
SELECT n1+1-n2 classt,tab2.no_session,tab2.d
FROM tab2,T3
WHERE tab2.d = T3.d
AND n1+1-n2 <=10
ORDER BY classt
;