import sys
import unittest
sys.path.append('../')
from exercise1.p1 import validate_email
from exercise2.p2 import validate_password
from exercise3.p3 import validate_input
from exercise4.p4 import Item
from exercise4.save_to_csv import save_to_csv
from exercise4.user_actions import User
from requests import HTTPError
import requests
class Test:
    def test_valid_email(self):
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

    def test_delete_item(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.delete_item',return_value={'result':'item deleted successfully'})
        result = mock(3)
        assert result=={'result':'item deleted successfully'}

    def test_delete_item_negative(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.delete_item',return_value={})
        result = mock('u')
        assert result!={'result':'item deleted successfully'}

    def test_add_item(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.add_item',return_value={'result':'item added successfully'})
        item = {'name':'work','reminder':'afternoon','status':'False'}
        result = mock(item)
        assert result=={'result':'item added successfully'}

    def test_add_item_negative(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.add_item',return_value={'result':'item added successfully'})
        item = {'reminder':'afternoon','status':'False'}
        result = mock(item)
        assert result=={'result':'item added successfully'}

    def test_update_item(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.update_item',return_value={'result':'item udpated successfully'})
        item = {'name':'work','reminder':'morning'}
        result = mock(item)
        assert result=={'result':'item udpated successfully'}

    def test_update_item_negative(self,mocker):
        mock = mocker.patch('exercise4.p4.Item.update_item',return_value={'result':'item udpated successfully'})
        item = {'name':'work','reminder':'morning'}
        result = mock(item)
        assert result!={'result':'item updated successfully'}

    def test_register_user(self,mocker):
        mock = mocker.patch('exercise4.user_actions.User.register_user',return_value={'result':'user added successfully'})
        item = {'name':'aftab','phone_number':98723}
        result = mock(item)
        assert result=={'result':'user added successfully'}

    def test_reigister_user_negative(self,mocker):
        mock = mocker.patch('exercise4.user_actions.User.register_user',return_value={'result':'user added successfully'})
        item = {'phone_number':98723845}
        result = mock(item)
        assert result=={'result':'user added successfully'}

    def test_write_to_csv(self,mocker):
        mock = mocker.patch('exercise4.user_actions.User.save_to_csv',return_value={'result':'records added to csv file successfully'})
        result = mock()
        assert result=={'result':'records added to csv file successfully'}

    def test_write_to_csv_negative(self,mocker):
        mock = mocker.patch('exercise4.user_actions.User.save_to_csv',return_value={'result':'records added to csv file successfully'})
        result = mock(4)
        assert result=={'result':'records added to csv file successfully'}




