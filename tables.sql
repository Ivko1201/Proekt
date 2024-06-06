CREATE TABLE Species (
    species_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    conservation_status VARCHAR(50)
);

CREATE TABLE Enclosures (
    enclosure_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    size_sq_ft DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Animals (
    animal_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    species_id INT,
    enclosure_id INT,
    age INT,
    gender CHAR(1),
    arrival_date DATE,
    FOREIGN KEY (species_id) REFERENCES Species(species_id),
    FOREIGN KEY (enclosure_id) REFERENCES Enclosures(enclosure_id)
);

CREATE TABLE Keepers (
    keeper_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    hire_date DATE,
    speciality VARCHAR(50)
);

CREATE TABLE Animal_Keeper (
    animal_id INT,
    keeper_id INT,
    PRIMARY KEY (animal_id, keeper_id),
    FOREIGN KEY (animal_id) REFERENCES Animals(animal_id),
    FOREIGN KEY (keeper_id) REFERENCES Keepers(keeper_id)
);

CREATE TABLE Animal_Log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    action VARCHAR(50),
    animal_id INT,
    timestamp DATETIME,
    FOREIGN KEY (animal_id) REFERENCES Animals(animal_id)
);
