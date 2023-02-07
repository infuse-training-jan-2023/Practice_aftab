import sqlite3
connection = sqlite3.connect('../todo.db')
with open('./schema.sql') as f:
    connection.executescript(f.read())

cursor  = connection.cursor()
cursor.execute('INSERT INTO todo(name, reminder, status) VALUES(?,?,?)',
('work','reminder',True)
)

cursor.execute('insert into user(name,phone_number) values(?,?)',('aftab',2347556))
connection.commit()
connection.close()



