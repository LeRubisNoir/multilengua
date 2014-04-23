Feature: Manage home page
	In order to learn new language
	As an everybody
	I want to sea a multilangual website

        @current
	Scenario: Show homepage
	Given I have write the url website
        Then I should see "Home Page" in the selector "h1"
       
	Scenario: Select try game
	Given I have reach the home page
	When I click on try button
	Then I should see "try page"
