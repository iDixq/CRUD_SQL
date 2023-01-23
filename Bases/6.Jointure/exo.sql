
# REQUETE JOINTURE 

-- Diff Imbriquée vs jointure 

-- Les jointures et les requêtes imbriquées permettent de faire des relations entre les différentes tables afin 
-- d'avoir des colonnes associées pour former qu'un seul résultat.

-- Une jointure est possible dans tous les cas.

-- Une requête imbrique est possible seulement dans le cas oû le résultat d'affichage est issu d'une seule table.

-- Dans ce cas précis, bien qu'une jointure soit possible, la requete imbriquée aura quand même l'avantage de s'exécuter plus rapidement.
-- Avec une requete en jointure, on peut demander des colonnes de toutes tables concernées.

-----------------------------------------------------------------------------------------------------------------------------------------------


-- INNER JOIN
-- USING


-- NOUS AIMERIONS CONNAITRE LES DATES DE SORTIE ET LES DATES DE RENDU POUR L'ABONNE GUILLAUME.

SELECT id_abonne, prenom, date_sortie, date_rendu FROM emprunt INNER JOIN abonne USING (id_abonne) WHERE prenom = "Guillaume"


SELECT abonne.id_abonne, prenom, date_sortie, date_rendu FROM emprunt INNER JOIN abonne ON emprunt.id_abonne = abonne.id_abonne WHERE prenom = "Guillaume"; 

+-----------+-----------+-------------+------------+
| id_abonne | prenom    | date_sortie | date_rendu |
+-----------+-----------+-------------+------------+
|         1 | Guillaume | 2016-12-07  | 2016-12-11 |
|         1 | Guillaume | 2016-12-15  | 2016-12-30 |
+-----------+-----------+-------------+------------+

-- Qui a emprunté le livre "une vie" sur l'année 2016 


SELECT prenom, auteur, titre, date_sortie, date_rendu FROM emprunt INNER JOIN abonne USING (id_abonne) INNER JOIN livre USING (id_livre) WHERE titre ="une vie"; 


+-----------+-------------------+---------+-------------+------------+
| prenom    | auteur            | titre   | date_sortie | date_rendu |
+-----------+-------------------+---------+-------------+------------+
| Guillaume | GUY DE MAUPASSANT | Une vie | 2016-12-07  | 2016-12-11 |
| Chloe     | GUY DE MAUPASSANT | Une vie | 2016-12-11  | 2016-12-19 |
| Benoit    | GUY DE MAUPASSANT | Une vie | 2016-02-20  | NULL       |
+-----------+-------------------+---------+-------------+------------+
-- EXERCICE : Nous aimerions les date de sortie et les date de rendu pour les livres ecrit par alphonse daudet

SELECT date_sortie, date_rendu, titre, auteur 
FROM emprunt
INNER JOIN livre USING (id_livre)
WHERE auteur ="Alphonse Daudet"

+-------------+------------+----------------+-----------------+
| date_sortie | date_rendu | titre          | auteur          |
+-------------+------------+----------------+-----------------+
| 2016-12-12  | 2016-12-22 | Le Petit chose | ALPHONSE DAUDET |
+-------------+------------+----------------+-----------------+

-- EXERCICE : Nous aimerions connaitre le nombre de livre emprunté par chaque abonné !

SELECT prenom, COUNT(id_livre)
AS 'nombre ' 
FROM abonne
INNER JOIN emprunt ON emprunt.id_abonne = abonne.id_abonne
GROUP by prenom



+-----------+--------+
| prenom    | nombre |
+-----------+--------+
| Benoit    |      3 |
| Chloe     |      2 |
| Guillaume |      2 |
| Laura     |      1 |
+-----------+--------+

-- EXERCICE : Nous aimerions connaitre le nombre de livre à rendre pour chaque abonné (prenom de la personne et le nombre de livre a rendre)

SELECT prenom, COUNT(*) AS "nombre"
FROM emprunt
INNER JOIN abonne 
USING(id_abonne)
WHERE date_rendu IS NULL
GROUP BY prenom


+--------+--------+
| prenom | nombre |
+--------+--------+
| Benoit |      1 |
| Chloe  |      1 |
+--------+--------+

-- EXERCICE : qui a emprunté quoi et quand ? 😬

SELECT prenom, titre, date_sortie 
FROM emprunt 
INNER JOIN abonne 
USING(id_abonne) 
INNER JOIN livre 
USING(id_livre)



+-----------+-------------------------+-------------+
| prenom    | titre                   | date_sortie |
+-----------+-------------------------+-------------+
| Guillaume | Une vie                 | 2016-12-07  |
| Benoit    | Bel-Ami                 | 2016-12-07  |
| Chloe     | Une vie                 | 2016-12-11  |
| Laura     | Le Petit chose          | 2016-12-12  |
| Guillaume | La Reine Margot         | 2016-12-15  |
| Benoit    | Les Trois Mousquetaires | 2016-01-02  |
| Chloe     | Les Trois Mousquetaires | 2016-02-15  |
| Benoit    | Une vie                 | 2016-02-20  |
+-----------+-------------------------+-------------+