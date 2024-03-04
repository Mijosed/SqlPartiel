SELECT c.id 
FROM creature c
JOIN creature_template ct ON c.gid = ct.id 
WHERE ct.level > 10;
