produit
+-------------+-----------+---------+------+-------+----------------+
| id_produit  | titre     | couleur | prix | stock | fournisseur_id |
+-------------+-----------+---------+------+-------+----------------+
|           1 | tshirt    | bleu    |   10 |    20 |        1 	    |
|           2 | chemise   | noir    |   50 |   600 |        1 	    |
|           3 | chaussete | blanc   |   30 |   300 |        1       |
|           6 | chassure  | noir    |   35 |   250 |        2       |
|           7 | parapluie | orange  |   35 |   120 |        2       |
+-------------+-----------+---------+------+-------+----------------+

fournisseur
+----------------+------+-----------+
| id_fournisseur | nom  | ville     |
+----------------+------+-----------+
|              1 | nom1 | paris     |
|              2 | nom2 | marseille |
+----------------+------+-----------+


CREATE TABLE admin (
  id_admin int(3) default auto_increment,
  pseudo varchar(10) NOT NULL,
  password varchar(10) NOT NULL,
  role varchar(10)  NOT NULL,
  id_fourn int(3)  NOT NULL,
  PRIMARY KEY  (id_admin))
  ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

INSERT INTO admin (id_admin, pseudo, password, role) VALUES
(1, 'iDixq', 'poknov', "admin en chef"),
(2, 'Yanko', 'popolol', "admin second");

CREATE TABLE article (
  id_article int(3) default NOT NULL auto_increment,
  titre varchar(10) NOT NULL,
  prix varchar(10) NOT NULL,
  role varchar(10)  NOT NULL,
  id_fournisseur int(3) NOT NULL,
  PRIMARY KEY  (id_article))
 
 ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

INSERT INTO article (id_article, titre, prix, id_fournisseur) VALUES
(1, "Jus d'orange", '1.20', id_fournisseur),
(2, 'Yanko', 'popolol', "admin second");

CREATE TABLE fournisseur (
  id_fournisseur int(3) default NOT NULL auto_increment,
  nom varchar(10) NOT NULL,
  ville varchar(10) NOT NULL,
  PRIMARY KEY  (id_fournisseur)) 
  ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO fournisseur (id_fournisseur, nom, ville) VALUES
(1, 'nom1', 'Etiolles'),
(2, 'nom2', 'Pontgibaud');

CREATE TABLE commande (
  id_commande int(3) default NOT NULL auto_increment,
  id_fournisseur int(3) NOT NULL,
  id_article int(3) NOT NULL,
  id_admin int(3) NOT NULL,
  PRIMARY KEY  (id_commande)) 
  ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO commande (id_commande, id_fournisseur, id_article, id_admin) VALUES
("id_commande", 'id_fournisseur', 'id_article', "id_admin"),
("id_commande", 'id_fournisseur', 'id_article', "id_admin");


ALTER TABLE article
  ADD CONSTRAINT article_ibfk_1 FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur);
  
  ALTER TABLE commande
  ADD CONSTRAINT commande_ibfk_1 FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur),
  ADD CONSTRAINT commande_ibfk_2 FOREIGN KEY (id_article) REFERENCES article (id_article),
  ADD CONSTRAINT commande_ibfk_3 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);

 