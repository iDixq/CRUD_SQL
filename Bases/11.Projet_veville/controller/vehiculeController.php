<?php

class Vehicule
{

    private $_titre;
    private $_marque;
    private $_modele;
    private $_description;
    private $_photo;
    private $_prix_journalier;


    public function __construct($titre, $marque, $modele, $description, $photo, $prix_journalier)
    {

        $this->settitre($titre);
        $this->setmarque($marque);
        $this->setmodele($modele);
        $this->setdescription($description);
        $this->setphoto($photo);
        $this->setprix_journalier($prix_journalier);
    }


    /*---------------------------LES GETTERS--------------------------------------------------------------*/

    public function gettitre($valeur)
    {

        return $this->_titre;
    }

    public function getmarque($valeur)
    {

        return $this->_marque;
    }

    public function getmodele($valeur)
    {

        return $this->_modele;
    }

    public function getdescription($valeur)
    {

        return $this->_description;
    }

    public function getphoto($valeur)
    {

        return $this->_photo;
    }

    public function getprix_journalier($valeur)
    {

        return $this->_prix_journalier;
    }


    /*---------------------------LES SETTERS--------------------------------------------------------------*/


    public function settitre($valeur)
    {

        $this->_titre = $valeur;
    }

    public function setmarque($valeur)
    {

        $this->_marque = $valeur;
    }

    public function setmodele($valeur)
    {

        $this->_modele = $valeur;
    }

    public function setdescription($valeur)
    {

        $this->_description = $valeur;
    }

    public function setphoto($valeur)
    {

        $this->_photo = $valeur;
    }

    public function setprix_journalier($valeur)
    {

        $this->_prix_journalier = $valeur;
    }
}

$vehicule = new Vehicule("Voiture de collection", "Lamborghini", "Diablo", "modele légendaire introuvable", "https://www.turbo.fr/sites/default/files/2020-04/1991-lamborghini-diablo-bat-auction-2.jpg", "5000");
var_dump($vehicule);
