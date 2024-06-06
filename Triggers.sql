CREATE TRIGGER before_insert_animal
BEFORE INSERT ON Animals
FOR EACH ROW
BEGIN
    IF NEW.age < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Age cannot be negative';
    END IF;
END;

CREATE TRIGGER after_insert_animal
AFTER INSERT ON Animals
FOR EACH ROW
BEGIN
    INSERT INTO Animal_Log (action, animal_id, timestamp)
    VALUES ('INSERT', NEW.animal_id, NOW());
END;

CREATE TRIGGER before_update_animal
BEFORE UPDATE ON Animals
FOR EACH ROW
BEGIN
    IF NEW.age < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Age cannot be negative';
    END IF;
END;

CREATE TRIGGER after_update_animal
AFTER UPDATE ON Animals
FOR EACH ROW
BEGIN
    INSERT INTO Animal_Log (action, animal_id, timestamp)
    VALUES ('UPDATE', NEW.animal_id, NOW());
END;
