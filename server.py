from flask import Flask,Response,request
from p1 import validate_email
from p2 import validate_password
from p3 import validate_input
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
# @app.route('/delete/<item_id>', methods=['GET','POST'])
# def delete_item_inventory(item_id):
#     return actions.delete_item_action(item_id)

if __name__ == '__main__':
    app.run(debug=True,host = '127.0.0.1',port = 4000)
