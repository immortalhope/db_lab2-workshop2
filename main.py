import cx_Oracle

username = 'nadiya'
password = 'nadiya'
database = 'localhost:1521/xe'

connection = cx_Oracle.connect(username, password, database)

query = """
SELECT museum_name AS gallary_name, museum_location.city
FROM museums
INNER JOIN museum_location ON museums.museum_id = museum_location.museum_id
INNER JOIN museum_type ON museums.m_type = museum_type.m_type
WHERE museum_location.city = 'NEW YORK'
AND museum_type.m_type = 'ART MUSEUM'
"""

cursor = connection.cursor()

cursor.execute(query)

result = cursor.fetchall()

print(result)

query = """
SELECT AVG(income) AS Avg_income_per_type, museums.m_type as museum_type
from museum_income
INNER JOIN museums ON museum_income.museum_id = museums.museum_id
group by museums.m_type
"""

cursor = connection.cursor()

cursor.execute(query)

result = cursor.fetchall()

print(result)

query = """
SELECT m_state as museum_state, COUNT(*) as amount
FROM museum_location
INNER JOIN museums ON museum_location.museum_id = museums.museum_id
INNER JOIN museum_type ON museums.m_type = museum_type.m_type
WHERE museum_type.m_type = 'HISTORIC PRESERVATION'
group by m_state
order by amount DESC 
"""

cursor = connection.cursor()

cursor.execute(query)

result = cursor.fetchall()

print(result)
