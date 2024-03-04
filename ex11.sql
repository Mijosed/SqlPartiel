SELECT quest.title, creature_template.name FROM quest 
INNER JOIN creature ON creature_start = creature.id
INNER JOIN creature_template ON creature.gid = creature_template.id;
