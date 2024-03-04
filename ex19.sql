CREATE TABLE item (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64),
    rarity INT,
    icon_id INT
);


CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    item_id INT,
    character_id INT,
    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (character_id) REFERENCES character(id)
);


CREATE TABLE loots (
    id SERIAL PRIMARY KEY,
    item_id INT,
    creature_gid INT,
    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (creature_gid) REFERENCES creature_template(id)
);
