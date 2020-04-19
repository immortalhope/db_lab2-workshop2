--Вивести всі арт-музеї міста Нью-Йорк.
SELECT museum_name AS Gallary_name, museum_location.city
FROM museums
INNER JOIN museum_location ON museums.museum_id = museum_location.museum_id
INNER JOIN museum_type ON museums.m_type = museum_type.m_type
WHERE museum_location.city = 'NEW YORK'
AND museum_type.m_type = 'ART MUSEUM';

--вивести середній прибуток кожного типу музею.
SELECT AVG(income) AS Avg_income_per_type, museums.m_type as museum_type
from museum_income
INNER JOIN museums ON museum_income.museum_id = museums.museum_id
group by museums.m_type;

--вивести топ-5 штатів, де знаходиться найбільша кількість історичних пам'яток.
SELECT m_state as museum_state, COUNT(*) as amount
FROM museum_location
INNER JOIN museums ON museum_location.museum_id = museums.museum_id
INNER JOIN museum_type ON museums.m_type = museum_type.m_type
WHERE museum_type.m_type = 'HISTORIC PRESERVATION'
group by m_state
order by amount 
--limit 5
;









