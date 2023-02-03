import sqlite3
connection = sqlite3.connect('../todo.db')
connection = sqlite3.connect('../user.db')
with open('./schema.sql') as f:
    connection.executescript(f.read())

cursor  = connection.cursor()
cursor.execute('INSERT INTO todo(name, reminder, status) VALUES(?,?,?)',
('work','reminder',True)
)
cursor.execute('INSERT INTO user(name, phone_number) VALUES(?,?)',
('aftab',46537322)
)
connection.commit()
connection.close()



