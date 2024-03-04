CREATE OR REPLACE VIEW v_character_stats
(nom, niveau, argent, quete_complete, quete_incomplete, objet_inventaire, monstre_tuee) AS
SELECT c.name, c.level, c.gold, COUNT(q.id) AS quete_complete, COUNT(q2.id) AS quete_incomplete, COUNT(o.id) AS objet_inventaire, COUNT(m.id) AS monstre_tuee
FROM character c
INNER JOIN quest q ON c.id = q.character_id AND q.complete = 1
INNER JOIN quest q2 ON c.id = q2.character_id AND q2.complete = 0
INNER JOIN object o ON c.id = o.character_id
INNER JOIN monster m ON c.id = m.character_id
GROUP BY c.id;