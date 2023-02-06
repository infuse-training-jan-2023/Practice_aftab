import sys
sys.path.append('../')
from exercise1.p1 import validate_email
from exercise2.p2 import validate_password
from exercise3.p3 import validate_input
from exercise4.p4 import Item
from exercise4.save_to_csv import save_to_csv
from requests import HTTPError
import requests
class Test:
    def test_valid_email(self,mocker):
        email = {'email': 'aftab.saeedi2015@gmail.com'}
        assert validate_email(email)=='valid'
    def test_invalid_email(self):
        assert validate_email({'email': 'aftab.saeedi2015@gmailcom'})=='invalid'
    def test_valid_password(self):
        assert validate_password({'password': 'Password!'})=='valid'
    def test_invalid_password(self):
        assert validate_password({'password': 'pass'})=='invalid'
    def test_valid_input(self):
        assert validate_input({'input': 1})!="input a number between 1 and 200"
    def test_invalid_input(self):
        assert validate_input({'input': -1})=="input a number between 1 and 200"
    def test_delete_item(self):
        mocker = mock.patch('exercise4.p4.Item',return_value=[])
        item = mock()

    # def test_delete_item_negative(self):
    # def test_add_item(self):
    # def test_add_item_negative(self):
    # def test_update_item(self):
    # def test_update_item_negative(self):
    # def test_register_user(self):
    # def test_reigister_user_negative(self):
    # def test_write_to_csv(self):
    # def test_write_to_csv_negative(self):




