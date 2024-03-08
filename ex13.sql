SELECT name FROM creature_template
WHERE NOT EXISTS (
    SELECT * FROM creature WHERE creature.gid = creature_template.id
);
