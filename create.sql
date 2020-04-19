CREATE TABLE museums(
    museum_id INT NOT NULL,
    museum_name VARCHAR(256), 
    museum_type VARCHAR(256)
--    ,location_id INT NOT NULL
);

CREATE TABLE museum_type(
    museum_type VARCHAR(256)
);

CREATE TABLE museum_location(
     museum_id INT NOT NULL 
     ,m_state VARCHAR(256)
     ,city VARCHAR(256)
     ,street VARCHAR(256)
);

CREATE TABLE museum_income(
    museum_id INT NOT NULL,
    income INT
);

--Creating primary keys
ALTER TABLE museums ADD CONSTRAINT PK_museums PRIMARY KEY (museum_id);
ALTER TABLE museum_type ADD CONSTRAINT PK_type PRIMARY KEY (museum_type);
ALTER TABLE museum_location ADD CONSTRAINT PK_location PRIMARY KEY (museum_id);
ALTER TABLE museum_income ADD CONSTRAINT PK_income PRIMARY KEY (museum_id);

--Adding foreign keys
ALTER TABLE museums 
ADD CONSTRAINT FK_museums_type FOREIGN KEY (museum_type) REFERENCES museum_type (museum_type);
ALTER TABLE museum_location
ADD CONSTRAINT FK_museum_location FOREIGN KEY (museum_id) REFERENCES museums (museum_id);
ALTER TABLE museum_income
ADD CONSTRAINT FK_income_museum FOREIGN KEY (museum_id) REFERENCES museums (museum_id);








