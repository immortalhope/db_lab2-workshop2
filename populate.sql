INSERT INTO museums (museum_id, museum_name, museum_type) 
SELECT museum_id, museum_name, museum_type FROM museum_data;

INSERT INTO museum_type (museum_type)
SELECT DISTINCT museum_type FROM museum_data;

INSERT INTO museum_income (museum_id, income)
SELECT museum_id, income FROM museum_data;

INSERT INTO museum_location (museum_id, m_state, city, street)
SELECT museum_id, m_state, city, street FROM museum_data;