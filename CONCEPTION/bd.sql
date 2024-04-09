DROP TABLE IF EXISTS Intervenant ;
CREATE TABLE Intervenant (id_Intervenant INT AUTO_INCREMENT NOT NULL,
nom_Intervenant VARCHAR(100),
prenom_Intervenant VARCHAR(100),
affectation_Intervenant VARCHAR(100),
url_personnelle_Intervenant VARCHAR(100),
PRIMARY KEY (id_Intervenant)) ENGINE=InnoDB;

DROP TABLE IF EXISTS S�minaire ;
CREATE TABLE S�minaire (id_S�minaire INT AUTO_INCREMENT NOT NULL,
id_intervenant_S�minaire INT,
titre_S�minaire VARCHAR(100),
resume_S�minaire TEXT,
lieu_S�minaire VARCHAR(100),
date_intervention_S�minaire DATE,
date_derniere_maj_S�minaire DATE,
PRIMARY KEY (id_S�minaire)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Donner ;
CREATE TABLE Donner (id_Intervenant **NOT FOUND** AUTO_INCREMENT NOT NULL,
id_S�minaire **NOT FOUND** NOT NULL,
PRIMARY KEY (id_Intervenant,
 id_S�minaire)) ENGINE=InnoDB;

ALTER TABLE Donner ADD CONSTRAINT FK_Donner_id_Intervenant FOREIGN KEY (id_Intervenant) REFERENCES Intervenant (id_Intervenant);

ALTER TABLE Donner ADD CONSTRAINT FK_Donner_id_S�minaire FOREIGN KEY (id_S�minaire) REFERENCES S�minaire (id_S�minaire);