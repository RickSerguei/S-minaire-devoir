DROP TABLE IF EXISTS Intervenant ;
CREATE TABLE Intervenant (id_Intervenant INT AUTO_INCREMENT NOT NULL,
nom_Intervenant VARCHAR(100),
prenom_Intervenant VARCHAR(100),
affectation_Intervenant VARCHAR(100),
url_personnelle_Intervenant VARCHAR(100),
PRIMARY KEY (id_Intervenant)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Séminaire ;
CREATE TABLE Séminaire (id_Séminaire INT AUTO_INCREMENT NOT NULL,
id_intervenant_Seminaire INT,
titre_Seminaire VARCHAR(100),
resume_Seminaire TEXT,
lieu_Seminaire VARCHAR(100),
date_intervention_Seminaire DATE,
date_derniere_maj_Seminaire DATE,
PRIMARY KEY (id_Seminaire)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Donner ;
CREATE TABLE Donner (id_Intervenant **NOT FOUND** AUTO_INCREMENT NOT NULL,
id_Seminaire **NOT FOUND** NOT NULL,
PRIMARY KEY (id_Intervenant,
 id_Seminaire)) ENGINE=InnoDB;

ALTER TABLE Donner ADD CONSTRAINT FK_Donner_id_Intervenant FOREIGN KEY (id_Intervenant) REFERENCES Intervenant (id_Intervenant);

ALTER TABLE Donner ADD CONSTRAINT FK_Donner_id_Seminaire FOREIGN KEY (id_Seminaire) REFERENCES Seminaire (id_Seminaire);
