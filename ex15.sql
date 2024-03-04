SELECT q.title, ch.name 
FROM quest q
JOIN character_quests cq ON q.id = cq.quest_id
JOIN character ch ON cq.character_id = ch.id
WHERE cq.complete = 0;