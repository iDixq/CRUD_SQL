-- SUPPRIMER LES EMPLOYES QUI ONT UN ID_EMPLOYES = 350;
-- SUPPRIMER LES EMPLOYES DU SERVICE COMMERCIAL QUI ONT UN SALAIRE INFERIEUR A 2000 ET QUI ONT ETAIENT EMBAUCHE ENTRE 2001 & 2005
-- USE DELETE


DELETE FROM employes WHERE id_employes = 350;

DELETE FROM employes WHERE service = "commercial" AND salaire < 2000 AND (date_embauche BETWEEN "2001-01-01" AND "2005-12-31") ;




