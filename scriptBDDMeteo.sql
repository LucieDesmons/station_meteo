CREATE DATABASE station_meteo ;
CREATE USER 'meteorologue';
GRANT ALL PRIVILEGES ON station_meteo.* TO 'meteorologue' ;
FLUSH PRIVILEGES ;

CREATE TABLE emplacements(
   id_emplacement INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nom_emplacement VARCHAR(50) DEFAULT ''
);

CREATE TABLE sondes(
   id_sonde INT NOT NULL PRIMARY KEY,
   id_emplacement INT NOT NULL,
   FOREIGN KEY(id_emplacement) REFERENCES emplacements(id_emplacement)
);

CREATE TABLE donnees_meteo(
   id_releve_meteo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   date_heure TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   temperature DECIMAL(6,2) DEFAULT NULL,
   humidite DECIMAL(6,2) DEFAULT NULL,
   id_sonde INT NOT NULL,
   FOREIGN KEY(id_sonde) REFERENCES sonde(id_sonde)
);
	
