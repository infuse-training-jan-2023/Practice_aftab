Feature: Delete an item
    as a user i am able to delete an item from database

    Scenario: delete a item
        When I delete an item
        Then the item should be deleted
        Then the api status code should be 200
        Then the response in should be in json format
