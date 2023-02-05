import pytest
from pytest_bdd import scenarios, when, then
import requests
scenarios('../features/save_to_csv.feature')

url = "http://127.0.0.1:4000/item/csv"
@when('i write the result to a csv file')
def check_user_registered():
    pytest.api_response = requests.post(url)
    print(pytest.api_response)

@then('the csv file should contain the reasult')
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
