SELECT title, character.name FROM quest
INNER JOIN character_quests ON quest.id = character_quests.quest_id
INNER JOIN character ON character_quests.character_id = character.id
WHERE complete = 0;