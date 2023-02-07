import sqlite3
from exercise4.save_to_csv import save_to_csv

class User:
    DBPATH = 'todo.db'
    connection = None
    def connect_db():
        return User.connection if User.connection is not None else sqlite3.connect(User.DBPATH)
    def register_user(self,data):
        name = data['name']
        phone_number = data['phone_number']
        conn = User.connect_db()
        cursor = conn.cursor()
        result = cursor.execute('insert into user(name,phone_number) values(?,?)',(name,phone_number))
        conn.commit()
        return {'result':'user added successfully'}
    def save_to_csv(self):
        conn = User.connect_db()
        cursor = conn.cursor()
        result = cursor.execute('select * from todo')
        save_to_csv(result)
        conn.commit()
        return {'result':'records added to csv file successfully'}
