import requests
def validate_input(data):
    input = data['input']
    if(input>=1 and input<=200):
        url = "https://jsonplaceholder.typicode.com/todos/"+str(input)
        response = requests.get(url)
        return response.json()
    else:
        return "input a number between 1 and 200"


