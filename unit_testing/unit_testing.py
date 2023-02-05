import sys
sys.path.append('../')
from exercise1.p1 import validate_email
from exercise2.p2 import validate_password
from exercise3.p3 import validate_input
class Test:
    def test_valid_email(self):
        assert validate_email({'email': 'aftab.saeedi2015@gmail.com'})=='valid'
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



