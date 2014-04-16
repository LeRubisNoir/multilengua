Feature: Manage home page
	In order to learn new language
	As an everybody
	I want to sea a multilangual website


	Scenario: Show homepage
	Given I have write the url website
	Then I can see the home page view

	Scenario: Select try game
	Given I have reach the home page
	When I click on try button
	Then I shoud reach "try page"
