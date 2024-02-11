-- Supprimer les tables si elles existent déjà
DROP TABLE IF EXISTS Horaire;
DROP TABLE IF EXISTS Jour;
DROP TABLE IF EXISTS Ligne;
DROP TABLE IF EXISTS Station;

-- Créer la table des stations
CREATE TABLE IF NOT EXISTS Station (
   Id_Station INT PRIMARY KEY,
   Nom_Station VARCHAR(255)
);

-- Créer la table des lignes de bus
CREATE TABLE IF NOT EXISTS Ligne (
   Id_Ligne INT PRIMARY KEY,
   Nom_Ligne VARCHAR(255)
);

-- Créer la table des jours de la semaine
CREATE TABLE IF NOT EXISTS Jour (
   Id_Jour INT PRIMARY KEY,
   Nom_Jour VARCHAR(255)
);

-- Créer la table des horaires
CREATE TABLE IF NOT EXISTS Horaire (
   Id_Horaire INT PRIMARY KEY,
   Heure TIME,
   Id_Station INT,
   Id_Ligne INT,
   Id_Jour INT,
   ArrêtTemporairementNonDesservi BOOLEAN DEFAULT FALSE,
   FOREIGN KEY (Id_Station) REFERENCES Station(Id_Station),
   FOREIGN KEY (Id_Ligne) REFERENCES Ligne(Id_Ligne),
   FOREIGN KEY (Id_Jour) REFERENCES Jour(Id_Jour)
);
   