Feature: Access to vocable group for exercise 1
  In order to reach the vocable group
  As a member
  I should choose the exercise 1 on the page

  Scenario: Choose a vocable group for the exercise 1
  Given I am logged in and i have choose the exercise 1
  When I click on the vocable group named "Cuisine"
  Then i should start the exercise 1 with the vocable group named "Cuisine"