
import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/update_item.feature')

url = "http://127.0.0.1:4000/item/4"
item = {"name":"work","reminder":"afternoon","status":True}
@when('I update an item')
def check_item_updated():
    pytest.api_response = requests.put(url,json=item)
    print(pytest.api_response)

@then('the item should be updated')
def check_answer_returned():
    response = pytest.api_response.json()
    print(response)
    assert response.get("result")

@then('the api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('the api response should be in json format')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
