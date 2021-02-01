--Script de création de la base de données météo : 
CREATE DATABASE meteo ;
CREATE USER ‘meteo’@’%’ IDENTIFIED BY ‘meteo ‘ ;
GRANT ALL PRIVILEGES ON meteo.* TO ‘meteo’@’%’ ;
FLUSH PRIVILEGES ;
CREATE TABLE emplacement(
   id_emplacement INT NOT NULL,
   nom_pieces VARCHAR(50) DEFAULT NULL,
   PRIMARY KEY(id_emplacement)
);

CREATE TABLE sonde(
   id_sonde INT NOT NULL,
   emplacement_sonde VARCHAR(50) NOT NULL,
   id_emplacement INT NOT NULL,
   PRIMARY KEY(id_sonde),
   FOREIGN KEY(id_emplacement) REFERENCES Emplacement(id_emplacement)
);

CREATE TABLE meteo(
   date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   temperature DECIMAL(5,2) DEFAULT NULL,
   humidite DECIMAL(6,2) DEFAULT NULL,
   icone_meteo VARCHAR(6) DEFAULT NULL,
   id_sonde INT NOT NULL,
   PRIMARY KEY(date),
   FOREIGN KEY(id_sonde) REFERENCES sonde(id_sonde)
);
	
