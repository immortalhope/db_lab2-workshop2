import cx_Oracle
# import plotly.graph_objects as go
import chart_studio
import chart_studio.plotly as py
import plotly.graph_objs as go

chart_studio.tools.set_credentials_file('immortal_hope', 'U9n78L48XKgiXzsl1tLO')

username = 'nadiya'
password = 'nadiya'
database = 'localhost:1521/xe'

connection = cx_Oracle.connect(username, password, database)
# -------------------------------------------
# Перший запит. Кругова діаграма з відсотковим віднощенням кількості всіх типів музеїв у мість Нью-Йорк
# -------------------------------------------
query = """

SELECT  
 m_type,
COUNT(*)
FROM museums
INNER JOIN museum_location ON museums.museum_id = museum_location.museum_id
WHERE museum_location.city = 'NEW YORK'
GROUP BY m_type

"""

cursor = connection.cursor()

cursor.execute(query)

museum_type = []
amount = []
for data in cursor.fetchall():
    museum_type.append(data[0])
    amount.append(data[1])

# print(museum_type, amount)


data = go.Pie(labels=museum_type, values=amount)
# fig = go.Figure(data)
# fig.show()
py.plot([data], auto_open=True, filename='oracle_data')

#  ------------------------------
# Другий запит. Графык залежносты між типом музею та прибутком.
#--------------------------------
query = """
SELECT AVG(income) AS Avg_income_per_type, 
    museums.m_type as museum_type
from museum_income
INNER JOIN museums ON museum_income.museum_id = museums.museum_id
group by museums.m_type
"""

cursor = connection.cursor()

cursor.execute(query)

avg_income = []
museum_type = []

for data in cursor.fetchall():
    avg_income.append(data[0])
    museum_type.append(data[1])

# fig = go.Figure(data=go.Scatter(x=museum_type, y=avg_income, mode='line'))
data = go.Scatter(x=museum_type, y=avg_income)
py.plot([data], auto_open=True, filename='oracle_data')

# ----------------------------------
# Третій запит. Стовпчикова діаграма зі штатами та кількістю історичниз пам'яток, що знаходяться на їчній території.
# ----------------------------------
query = """
SELECT m_state as museum_state, 
        COUNT(*) as amount
FROM museum_location
INNER JOIN museums ON museum_location.museum_id = museums.museum_id
INNER JOIN museum_type ON museums.m_type = museum_type.m_type
WHERE museum_type.m_type = 'HISTORIC PRESERVATION'
group by m_state
order by amount DESC 
"""

cursor = connection.cursor()

cursor.execute(query)

state = []
amount = []
for data in cursor.fetchall():
    state.append(data[0])
    amount.append(data[1])

# fig = go.Figure([go.Bar(x=state, y=amount)])

data = go.Bar(x=state, y=amount)
py.plot([data], auto_open=True, filename='oracle_data')

cursor.close()
connection.close()
