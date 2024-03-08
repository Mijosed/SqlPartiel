SELECT creature_template.name
FROM character
INNER JOIN inventory ON character.id = inventory.character_id
INNER JOIN loots ON inventory.item_id = loots.item_id
INNER JOIN creature_template ON loots.creature_gid = creature_template.id
WHERE character.name = 'LeKrogan';
