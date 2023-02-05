import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/delete_item.feature')

url = "http://127.0.0.1:4000/item/25"
item = {"name":"post","reminder":"working","status":False}
@when('I delete an item')
def check_item_deleted():
    pytest.api_response = requests.post(url,json=item)
    print(pytest.api_response)

@then('the item should be deleted')
def check_answer_returned():
    response = pytest.api_response.json()
    print(response)
    assert response.get("result")

@then('the api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('the response in should be in json format')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
