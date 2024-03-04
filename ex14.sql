-- Test avec le personnage qui a l'id 1

SELECT q.title 
FROM quest q
JOIN character_quests cq ON q.id = cq.quest_id
WHERE cq.complete = 1 AND cq.character_id = 1;