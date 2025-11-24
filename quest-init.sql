CREATE DATABASE projet_quest;

USE projet_quest;


CREATE TABLE `personne` (
  `type_personne` enum('Stagiaire','Formateur') NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `civilite` enum('Homme','Femme','NB') NOT NULL,
  `login` varchar(25) NOT NULL,
  `nom` varchar(30) NOT NULL DEFAULT 'Doe',
  `password` varchar(180) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `admin` bit(1) DEFAULT NULL,
  `cp` varchar(15) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `voie` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `filiere` int DEFAULT NULL,
  `ordinateur` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK8l3j8smom1kapeu3y4f4d6g3g` (`login`),
  UNIQUE KEY `UK10pipeekhy00lhxchf8ubd7jk` (`ordinateur`)
) ENGINE=InnoDB;


CREATE TABLE `matiere` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


INSERT INTO personne (type_personne, civilite, login, nom, prenom, password, admin) VALUES ('Formateur', 'Homme', 'jeremy', 'PERROUAULT', 'Jérémy', '$2a$10$zFeTn0rQKrsMXIT2I2NAl.70YWXs05/XyJsnSsznDjB4C.T0yv8hC', 1);

INSERT INTO matiere (libelle) VALUES ('DOCKER');
