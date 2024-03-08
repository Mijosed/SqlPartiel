SELECT creature_template.name 
FROM creature_template
JOIN creature ON creature.gid = creature_template.id
JOIN quest ON creature.id = quest.creature_start AND creature.id = quest.creature_end
GROUP BY creature_template.name;
