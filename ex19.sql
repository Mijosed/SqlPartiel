-- Création de la table item
CREATE TABLE item
(
    id SERIAL NOT NULL,
    name VARCHAR(64) NOT NULL DEFAULT '',
    rarity INT NOT NULL DEFAULT 0,
    icon_id INT NOT NULL DEFAULT 0,

    PRIMARY KEY (id)
);

-- Crétion de la table inventory
CREATE TABLE inventory
(
    id SERIAL NOT NULL,
    item_id INT NOT NULL DEFAULT 0,
    character_id INT NOT NULL DEFAULT 0,

    PRIMARY KEY (id),
    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (character_id) REFERENCES character(id)
);

CREATE TABLE loots
(
    id SERIAL NOT NULL,
    item_id INT NOT NULL DEFAULT 0,
    creature_gid INT NOT NULL DEFAULT 0,

    PRIMARY KEY (id),
    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (creature_gid) REFERENCES creature_template(id)
);
