import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/register_new_user.feature')

url = "http://127.0.0.1:4000/user"
item = {"name":"sahid","phone_number":3328833}
@when('I register a new user')
def check_user_registered():
    pytest.api_response = requests.post(url,json=item)
    print(pytest.api_response)

@then('the user should be added')
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
