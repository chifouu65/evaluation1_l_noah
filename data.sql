-- Supprimer les anciennes données des stations
DELETE FROM Stations;

-- Insérer de nouvelles données dans la table Stations
INSERT INTO Stations (ID_Station, Nom_Station, ...) VALUES
    (1, 'P+R Ouest', ...),
    (2, 'Fourchêne1', ...),
    (3, 'Madelaine', ...),
    (4, 'République', ...),
    (5, 'PIBS 2', ...),
    (6, 'Petit Tohannic', ...),
    (7, 'Delestraint', ...),
    (8, 'Kersec', ...);


-- Supprimer les anciennes données des lignes
DELETE FROM Lignes;

-- Insérer de nouvelles données dans la table Lignes
INSERT INTO Lignes (ID_Ligne, Nom_Ligne) VALUES
    (1, 'Ligne 2 Direction Kersec'),
    (2, 'Ligne 2 Direction P+R Ouest');


-- Supprimer les anciennes données des jours de semaine
DELETE FROM Jours WHERE ID_Jour BETWEEN 1 AND 5;

-- Insérer de nouvelles données dans la table Jours (Lundi à Vendredi)
INSERT INTO Jours (ID_Jour, Nom_Jour) VALUES
    (1, 'Lundi'),
    (2, 'Mardi'),
    (3, 'Mercredi'),
    (4, 'Jeudi'),
    (5, 'Vendredi');

-- Supprimer les anciennes données de la ligne 2 pour les jours de semaine
DELETE FROM Horaires WHERE ID_Ligne = 1 AND ID_Jour BETWEEN 1 AND 5;

-- Insérer de nouvelles données dans la table Horaires pour la ligne 2 (Lundi à Vendredi)
INSERT INTO Horaires (ID_Station, ID_Ligne, ID_Jour, Heure) VALUES
    (1, 1, 1, '06:37:00'),
    (3, 1, 1, '06:42:00'),
    -- Ajouter d'autres horaires selon le besoin.
    (2, 1, 2, '06:47:00'),
    (4, 1, 2, '06:52:00'),
    -- Ajouter d'autres horaires selon le besoin.
    (5, 1, 3, '06:57:00'),
    (6, 1, 3, '07:02:00'),
    -- Ajouter d'autres horaires selon le besoin.
    (7, 1, 4, '07:06:00'),
    (8, 1, 4, '07:12:00'),
    -- Ajouter d'autres horaires selon le besoin.
    (4, 1, 5, '07:16:00'),
    (2, 1, 5, '07:22:00');