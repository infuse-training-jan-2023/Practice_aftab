from flask import Flask,Response,request
from exercise1.p1 import validate_email
from exercise2.p2 import validate_password
from exercise3.p3 import validate_input
from exercise4.p4 import Crud
import json

app = Flask(__name__)
@app.route('/validate/email', methods=['GET'])
def email_validation():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return validate_email(json_data)
    else:
        return 'Content-Type not supported!'
@app.route('/validate/password', methods=['GET'])
def password_validation():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return validate_password(json_data)
    else:
        return 'Content-Type not supported!'
@app.route('/validate/input', methods=['GET'])
def input_validation():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return validate_input(json_data)
    else:
        return 'Content-Type not supported!'


# exercise 4 todo database
# ADD ITEM
Crud = Crud()
@app.route('/item', methods=['POST'])
def add_item():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return Crud.add_item(json_data)
    else:
        return 'Content-Type not supported!'
# DELETE ITEM
@app.route('/item/<id>', methods=['POST'])
def delete_item(id):
    return Crud.delete_item(id)
# UPDATE ITEM
@app.route('/item/<id>', methods=['PUT'])
def update_item(id):
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return Crud.update_item(id,json_data)
    else:
        return 'Content-Type not supported!'
# register a user
@app.route('/user', methods=['POST'])
def register_user():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        json_data = request.json
        return Crud.register_user(json_data)
    else:
        return 'Content-Type not supported!'
# write rows to csv
@app.route('/item/csv', methods=['POST'])
def save_to_csv():
    return Crud.save_to_csv()

if __name__ == '__main__':
    app.run(debug=True,host = '0.0.0.0',port = 4000)
