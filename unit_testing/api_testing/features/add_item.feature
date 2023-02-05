Feature: add item
    As a user i can Add an item to the database

    Scenario: add item
        When I add an item
        Then item should be added
        Then api status code should be 200
        Then api response content type should be json format
