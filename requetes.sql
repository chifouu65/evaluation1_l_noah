-- Requêtes SQL répondant aux besoins

-- 1. Afficher la table des horaires dans l'ordre chronologique à l'arrêt Madelaine.
SELECT Heure
FROM Horaire
WHERE Id_Station = (SELECT Id_Station FROM Station WHERE Nom_Station = 'Madelaine')
ORDER BY Heure;

-- 2. Afficher le parcours complet de la ligne 2 Direction Kersec.
SELECT Nom_Station
FROM Station
WHERE Id_Station IN (
    SELECT Id_Station
    FROM Horaire
    WHERE Id_Ligne = (SELECT Id_Ligne FROM Ligne WHERE Nom_Ligne = 'Ligne 2 Direction Kersec')
    ORDER BY Heure
);

-- 3. Modifier le schéma pour prendre en compte l'arrêt non desservi temporairement.
-- Ajouter une colonne dans la table Horaire pour indiquer l'arrêt de substitution.

-- 4. Afficher le message "Arrêt temporairement non desservi" à l'arrêt Petit Tohannic.
SELECT
  CASE
    WHEN ArrêtTemporairementNonDesservi THEN 'Arrêt temporairement non desservi. Veuillez vous reporter à l\'arrêt Delestraint.'
    ELSE 'Horaires à l\'arrêt Petit Tohannic (Lundi)'
  END AS Resultat
FROM Horaire
WHERE Id_Station = (SELECT Id_Station FROM Station WHERE Nom_Station = 'Petit Tohannic') AND Id_Jour = (SELECT Id_Jour FROM Jour WHERE Nom_Jour = 'Lundi');

-- 5. Mettre à jour l'arrêt Petit Tohannic et afficher le message complet.
UPDATE Horaire SET ArrêtTemporairementNonDesservi = 1 WHERE Id_Station = (SELECT Id_Station FROM Station WHERE Nom_Station = 'Petit Tohannic');
SELECT 'Arrêt temporairement non desservi, veuillez vous reporter à l\'arrêt Delestraint' AS MessageComplet;

-- 6. Ajouter la ligne 2 dans la direction opposée Direction P+R Ouest.
INSERT INTO Ligne (Id_Ligne, Nom_Ligne) VALUES (2, 'Ligne 2 Direction P+R Ouest');
INSERT INTO Horaire (Id_Horaire, Heure, Id_Station, Id_Ligne, Id_Jour) VALUES (100, '06:32:00', 1, 2, 1);
-- ... (insert more schedules for the new direction as needed);

-- 7. Afficher pour chaque ligne, le parcours complet avec les arrêts temporairement non desservis.
SELECT
  Nom_Ligne,
  GROUP_CONCAT(Nom_Station) AS 'Arrêts Desservis'
FROM
  Ligne
JOIN
  Horaire ON Ligne.Id_Ligne = Horaire.Id_Ligne
JOIN
  Station ON Horaire.Id_Station = Station.Id_Station
GROUP BY
  Nom_Ligne;
