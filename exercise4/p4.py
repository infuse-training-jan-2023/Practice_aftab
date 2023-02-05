import sqlite3
from exercise4.save_to_csv import save_to_csv

class Crud:
    DBPATH = 'todo.db'
    def connect_db():
        return sqlite3.connect(Crud.DBPATH)
    def add_item(self,data):
        try:
            print(data)
            name = data['name']
            reminder = data['reminder']
            status = data['status']
            conn = Crud.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('insert into todo (name, reminder, status) values (?,?,?)', (name,reminder,status))
            conn.commit()
            return {'result':'item added successfully'}
        except Exception as e:
            return e
    def delete_item(self,id):
        try:
            conn = Crud.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('DELETE FROM todo WHERE id=?',(id,))
            conn.commit()
            return {'result':'item deleted successfully'}
        except Exception as e:
            return e
    def update_item(self,id,data):
        conn = Crud.connect_db()
        cursor = conn.cursor()
        keys = data.keys()
        for key in keys:
            cursor.execute('update todo set {}=? where id = ?'.format(key),(data[key],id))
        conn.commit()
        return {'result':'item updated successfully'}
    def register_user(self,data):
        name = data['name']
        phone_number = data['phone_number']
        conn = Crud.connect_db()
        cursor = conn.cursor()
        result = cursor.execute('insert into user(name,phone_number) values(?,?)',(name,phone_number))
        conn.commit()
        return {'result':'user added successfully'}
    def save_to_csv(self):
        conn = Crud.connect_db()
        cursor = conn.cursor()
        result = cursor.execute('select * from todo')
        save_to_csv(result)
        conn.commit()
        return {'result':'records added to csv file successfully'}




