Feature: register a new user
    as a user i am able to register a new user in the database
    Scenario: register a new user
        When I register a new user
        Then the user should be added
        Then the api status code should be 200
        Then the api response should be in json format
