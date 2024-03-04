SELECT name FROM creature_template
INNER JOIN creature ON creature.gid = creature_template.id
INNER JOIN quest ON creature.id = quest.creature_start
WHERE quest.creature_start = quest.creature_end GROUP BY name;