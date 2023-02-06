import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/add_item.feature')

url = "http://127.0.0.1:4000/item"
item = {"name":"post","reminder":"working","status":False}
@when('I add an item')
def check_item_added():
    pytest.api_response = requests.post(url,json=item)
    print(pytest.api_response)

@then('item should be added')
def check_answer_returned():
    response = pytest.api_response.json()
    assert response.get("result")

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be json format')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
