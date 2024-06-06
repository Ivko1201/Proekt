CREATE INDEX idx_animal_name ON Animals(name);

CREATE INDEX idx_animal_species_enclosure ON Animals(species_id, enclosure_id);

CREATE INDEX idx_species_name_prefix ON Species(name text_pattern_ops);


BEGIN;

UPDATE Animals SET enclosure_id = 2 WHERE animal_id = 1;

DELETE FROM Animal_Keeper WHERE animal_id = 1;
INSERT INTO Animal_Keeper (animal_id, keeper_id) VALUES (1, 3);

COMMIT;
