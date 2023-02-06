import sqlite3

class Item:
    DBPATH = 'todo.db'
    connection = None
    def connect_db():
        return Item.connection if Item.connection is not None else sqlite3.connect(Item.DBPATH)
    def add_item(self,data):
        try:
            name = data['name']
            reminder = data['reminder']
            status = data['status']
            conn = Item.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('insert into todo (name, reminder, status) values (?,?,?)', (name,reminder,status))
            conn.commit()
            return {'result':'item added successfully'}
        except Exception as e:
            return e
    def delete_item(self,id):
        try:
            conn = Item.connect_db()
            cursor = conn.cursor()
            result = cursor.execute('DELETE FROM todo WHERE id=?',(id,))
            conn.commit()
            return {'result':'item deleted successfully'}
        except Exception as e:
            return e
    def update_item(self,id,data):
        conn = Item.connect_db()
        cursor = conn.cursor()
        keys = data.keys()
        for key in keys:
            cursor.execute('update todo set {}=? where id = ?'.format(key),(data[key],id))
        conn.commit()
        return {'result':'item updated successfully'}





