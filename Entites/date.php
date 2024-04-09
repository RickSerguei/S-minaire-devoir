<?php 

class Date_{
    private $date_seminaire;

    public function __construct($date_seminaire){
        $this->date_seminaire = $date_seminaire;
    }
// Méthode set ne retourne rien  
    public function setDateSeminaire( $date_seminaire): void {$this->date_reservation = $date_seminaire;}
// Méthode get retourne la valeur
	public function getDateSeminaire() {return $this->date_seminaire;}

}

// l'attribut date_seminaire est de type DATETIME
// les methodes sont "setDateSeminaire" et "getDateSeminaire"