import sqlite3

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
            cursor.execute('insert into todo (name, reminder, status) values (?,?,?)', (name,reminder,status))
            conn.commit()
            return "item added successfully"
        except Exception as e:
            return e
    def delete_item(self,id):
        try:
            conn = Crud.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('DELETE FROM todo WHERE id=?',(id,))
            conn.commit()
            return 'item deleted successfully'
        except Exception as e:
            return e
    def update_item(self,id,data):
        try:
            name = data['name']
            reminder = data['reminder']
            status = data['status']
            conn = Crud.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('UPDATE todo SET name=?,reminder=?,status=? WHERE id = ?',(name,reminder,status,id))
            conn.commit()
            return 'item updated successfully'
        except Exception as e:
            return e
    def register_user(self,data):
        try:
            name = data['name']
            phone_number = data['phone_number']
            conn = Crud.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('insert into user (name,address) values(?,?)',(name,phone_number))
            conn.commit()
            return "user added successfully"
        except Exception as e:
            return e



