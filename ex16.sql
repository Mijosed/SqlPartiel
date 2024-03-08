-- Création de la table faction
CREATE TABLE faction
(
    id SERIAL NOT NULL,
    color INT NOT NULL DEFAULT 0,
    name VARCHAR(64) NOT NULL DEFAULT '',

    PRIMARY KEY (id)
);

-- Ajout de contenu dans la table faction
INSERT INTO faction (id, color, name) 
VALUES (0, 0x00ff00, 'Enlightened');

-- Ajout de la colonne faction_id dans la table creature
ALTER TABLE creature
ADD COLUMN faction_id INT NOT NULL DEFAULT 0,
ADD FOREIGN KEY (faction_id) REFERENCES faction(id);
