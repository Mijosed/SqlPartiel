SELECT ct.name 
FROM creature_template ct
JOIN creature c ON ct.id = c.gid 
WHERE c.id = 6;