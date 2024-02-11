-- Insérer des données dans la table Stations
INSERT INTO Stations (ID_Station, Nom_Station, ...) VALUES
    (1, 'P+R Ouest', ...),
    (2, 'Fourchêne1', ...),
    (3, 'Madelaine', ...),
    (4, 'République', ...),
    (5, 'PIBS 2', ...),
    (6, 'Petit Tohannic', ...),
    (7, 'Delestraint', ...),
    (8, 'Kersec', ...);

-- Insérer des données dans la table Lignes
INSERT INTO Lignes (ID_Ligne, Nom_Ligne, ...) VALUES
    (1, 'Ligne 2 Direction Kersec', ...),
    (2, 'Ligne 2 Direction P+R Ouest', ...);

-- Insérer des données dans la table Jours
INSERT INTO Jours (ID_Jour, Nom_Jour, ...) VALUES
    (1, 'Lundi', ...),
    (2, 'Mardi', ...),
    (3, 'Mercredi', ...),
    (4, 'Jeudi', ...),
    (5, 'Vendredi', ...);

-- Insérer des données dans la table Horaires
INSERT INTO Horaires (ID_Horaire, ID_Station, ID_Ligne, ID_Jour, Heure, ...) VALUES
    (1, 1, 1, 1, '06:37:00', ...),
    (2, 3, 1, 1, '06:42:00', ...),
    -- Ajouter d'autres horaires selon le besoin.
