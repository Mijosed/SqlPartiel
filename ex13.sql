SELECT ct.name 
FROM creature_template ct
LEFT JOIN creature c ON ct.id = c.gid
WHERE c.id IS NULL;
