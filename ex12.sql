SELECT ct.name 
FROM quest q
JOIN creature cs ON q.creature_start = cs.id
JOIN creature ce ON q.creature_end = ce.id
JOIN creature_template ct ON cs.gid = ct.id AND ce.gid = ct.id
WHERE cs.id = ce.id;
