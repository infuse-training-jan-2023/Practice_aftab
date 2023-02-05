Feature: update an item
    as a user i am able to update an item in the database
    Scenario: Update an item
        When I update an item
        Then the item should be updated
        Then the api status code should be 200
        Then the api response should be in json format
