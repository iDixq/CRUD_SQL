CREATE TABLE admin (
  id_admin int NOT NULL auto_increment,
  pseudo varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  role varchar(255)  NOT NULL,
  PRIMARY KEY  (id_admin))
  ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;


CREATE TABLE article (
  id_article int NOT NULL auto_increment,
  titre varchar(255) NOT NULL,
  prix varchar(255) NOT NULL,
  id_fournisseur int(255) NOT NULL,
  PRIMARY KEY  (id_article))
 
 ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

CREATE TABLE fournisseur (
  id_fournisseur int NOT NULL auto_increment,
  nom varchar(255) NOT NULL,
  ville varchar(255) NOT NULL,
  PRIMARY KEY  (id_fournisseur)) 
  ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE commande (
  id_commande int NOT NULL auto_increment,
  id_fournisseur int(255) NOT NULL,
  id_article int(255) NOT NULL,
  id_admin int(255) NOT NULL,
  PRIMARY KEY  (id_commande)) 
  ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE article
  ADD CONSTRAINT article_ibfk_1 FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur);
  
  ALTER TABLE commande
  ADD CONSTRAINT commande_ibfk_1 FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur),
  ADD CONSTRAINT commande_ibfk_2 FOREIGN KEY (id_article) REFERENCES article (id_article),
  ADD CONSTRAINT commande_ibfk_3 FOREIGN KEY (id_admin) REFERENCES admin (id_admin);


INSERT INTO admin (pseudo, password, role) VALUES
('iDixq', 'poknov', "admin en chef"),
('Yanko', 'popolol', "admin second");


INSERT INTO article (titre, prix, id_fournisseur) VALUES
("Jus d'orange", '1.20', id_fournisseur),
('Ballon de foot', '20.30', id_fournisseur);

INSERT INTO fournisseur (nom, ville) VALUES
('nom1', 'Etiolles'),
('nom2', 'Pontgibaud');

 INSERT INTO commande (id_fournisseur, id_article, id_admin) VALUES
(id_fournisseur, id_article, id_admin),
(id_fournisseur, id_article, id_admin);




--------------------------CHATGPT-------------------------------------


CREATE TABLE admin (
  id_admin int NOT NULL auto_increment,
  pseudo varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  role varchar(255) NOT NULL,
  PRIMARY KEY (id_admin)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE fournisseur (
  id_fournisseur int NOT NULL auto_increment,
  nom varchar(255) NOT NULL,
  ville varchar(255) NOT NULL,
  PRIMARY KEY (id_fournisseur)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE article (
  id_article int NOT NULL auto_increment,
  titre varchar(255) NOT NULL,
  prix varchar(255) NOT NULL,
  id_fournisseur int NOT NULL,
  PRIMARY KEY (id_article)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE commande (
  id_commande int NOT NULL auto_increment,
  id_fournisseur int NOT NULL,
  id_article int NOT NULL,
  id_admin int NOT NULL,
  PRIMARY KEY (id_commande)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE article
ADD FOREIGN KEY (id_fournisseur) REFERENCES fournisseur(id_fournisseur);

ALTER TABLE commande
ADD FOREIGN KEY (id_fournisseur) REFERENCES fournisseur(id_fournisseur),
ADD FOREIGN KEY (id_article) REFERENCES article(id_article),
ADD FOREIGN KEY (id_admin) REFERENCES admin(id_admin);

INSERT INTO admin (pseudo, password, role) VALUES
('iDixq', 'poknov', "admin en chef"),
('Yanko', 'popolol', "admin second");

INSERT INTO fournisseur (nom, ville) VALUES
('nom1', 'Etiolles'),
('nom2', 'Pontgibaud');

INSERT INTO article (titre, prix, id_fournisseur) VALUES
("Jus d'orange", '1.20', 1),
('Ballon de foot', '20.30', 2);

INSERT INTO commande (id_fournisseur, id_article, id_admin) VALUES
(1, 1, 1),
(2, 2, 2);
