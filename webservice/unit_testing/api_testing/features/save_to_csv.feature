Feature: save the result to a csv file
    as a user i am able records of all the usres in the database to a csv file
    Scenario: write to a csv file
        When i write the result to a csv file
        Then the csv file should contain the reasult
        Then the api status code should be 200
        Then the api response should be in json format
