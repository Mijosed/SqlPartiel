-- Ajout du créature Wild Yak
INSERT INTO creature_template 
(name, level, model_id, exp, gold, health, speed, attack) 
VALUES ('Wild Yak', 99, 1387, 1000, 1000, 8, 8, 50);

-- Ajout de 3 créatures Young Wolf
INSERT INTO creature
(gid, pos_x, pos_y, pos_z)
VALUES (1, 5, 6, 7 ),
(1, -3, -2, -1),
(1, 42, 43, 44);