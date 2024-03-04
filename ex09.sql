SELECT name FROM creature_template
INNER JOIN creature ON creature.id = creature_template.id
WHERE creature.id = 6;