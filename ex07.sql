-- Le joueur LeKrogan obtient le niveau 15
UPDATE character
SET level = 15
WHERE name = 'LeKrogan';

--Le niveau du joueur duck est augmenté d'un niveau

UPDATE character
SET level = level + 1
WHERE name = 'duck';

--Changement du calcul de max_health
UPDATE character
SET max_health = (
    CASE
        WHEN gender = 0 THEN (level + 1) * 10 
        WHEN gender = 1 THEN level * 10
        ELSE max_health
    END
);