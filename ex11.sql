SELECT q.title, ct.name 
FROM quest q
JOIN creature c ON q.creature_start = c.id
JOIN creature_template ct ON c.gid = ct.id;