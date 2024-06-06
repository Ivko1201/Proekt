CREATE VIEW View_Animal_Species AS
SELECT a.animal_id, a.name AS animal_name, s.name AS species_name, a.age, a.gender
FROM Animals a
JOIN Species s ON a.species_id = s.species_id;

CREATE VIEW View_Animal_Enclosures AS
SELECT a.animal_id, a.name AS animal_name, e.name AS enclosure_name, e.size_sq_ft
FROM Animals a
JOIN Enclosures e ON a.enclosure_id = e.enclosure_id;

CREATE VIEW View_Keeper_Animals AS
SELECT k.keeper_id, k.name AS keeper_name, a.name AS animal_name
FROM Keepers k
JOIN Animal_Keeper ak ON k.keeper_id = ak.keeper_id
JOIN Animals a ON ak.animal_id = a.animal_id;
