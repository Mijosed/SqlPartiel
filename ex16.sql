CREATE TABLE faction (
    id SERIAL PRIMARY KEY,
    color INT,
    name VARCHAR(64)
);


INSERT INTO faction (id, color, name) VALUES (0, 0x00FF00, 'Enlightened');


ALTER TABLE creature ADD COLUMN faction_id INT REFERENCES faction(id);
