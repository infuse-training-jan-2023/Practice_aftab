import sqlite3
connection = sqlite3.connect('todo.db')
with open('DB/schema.sql') as f:
    connection.executescript(f.read())
connection.commit()
connection.close()



