<?php

class Membre
{

    private $_pseudo;
    private $_mdp;
    private $_nom;
    private $_prenom;
    private $_email;
    private $_civilite;
    private $_statut;
    private $_date_enregistrement;




    public function __construct($pseudo, $mdp, $nom, $prenom, $email, $civilite, $statut, $date_enregistrement)
    {

        $this->setpseudo($pseudo);
        $this->setmdp($mdp);
        $this->setnom($nom);
        $this->setprenom($prenom);
        $this->setemail($email);
        $this->setcivilite($civilite);
        $this->setstatut($statut);
        $this->setdate_enregistrement($date_enregistrement);
    }


    /*---------------------------LES GETTERS--------------------------------------------------------------*/

    public function getpseudo($valeur)
    {

        return $this->_pseudo;
    }

    public function getmdp($valeur)
    {

        return $this->_mdp;
    }

    public function getnom($valeur)
    {

        return $this->_nom;
    }

    public function getprenom($valeur)
    {

        return $this->_prenom;
    }

    public function getemail($valeur)
    {

        return $this->_email;
    }

    public function getcivilite($valeur)
    {

        return $this->_civilite;
    }

    public function getstatut($valeur)
    {

        return $this->_statut;
    }

    public function getdate_enregistrement($valeur)
    {

        return $this->_date_enregistrement;
    }


    /*---------------------------LES SETTERS--------------------------------------------------------------*/


    public function setpseudo($valeur)
    {

        $this->_pseudo = $valeur;
    }

    public function setmdp($valeur)
    {

        $this->_mdp = $valeur;
    }

    public function setnom($valeur)
    {

        $this->_nom = $valeur;
    }

    public function setprenom($valeur)
    {

        $this->_prenom = $valeur;
    }

    public function setemail($valeur)
    {

        $this->_email = $valeur;
    }

    public function setcivilite($valeur)
    {

        $this->_civilite = $valeur;
    }

    public function setstatut($valeur)
    {

        $this->_statut = $valeur;
    }

    public function setdate_enregistrement($valeur)
    {

        $this->_date_enregistrement = $valeur;
    }
}


$membre = new Membre("iDixq", "yoyoyo", "Hebrard", "Lucas", "ouaisouaisouais@gmail.com", "m", "1", "18-01-2023");
var_dump($membre);
