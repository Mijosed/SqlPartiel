CREATE VIEW v_character_stats AS
SELECT 
    ch.name AS character_name,
    ch.level AS character_level,
    ch.gold AS gold_earned,
    (SELECT COUNT(*) FROM character_quests cq WHERE cq.character_id = ch.id AND cq.complete = 1) AS quests_completed,
    (SELECT COUNT(*) FROM character_quests cq WHERE cq.character_id = ch.id AND cq.complete = 0) AS quests_incomplete,
    (SELECT COUNT(*) FROM inventory i WHERE i.character_id = ch.id) AS items_in_inventory,
    (SELECT COUNT(*) FROM creature_kills ck WHERE ck.character_id = ch.id) AS monsters_killed
FROM 
    character ch
ORDER BY 
    gold_earned DESC,
    quests_completed DESC,
    quests_incomplete,
    items_in_inventory DESC;
