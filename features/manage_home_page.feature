Feature: Manage home page
	In order to learn new language
	As an everybody
	I want to sea a multilangual website


	Scenario: Show homepage
	Given I have click on the website url
	When I arrived on the home page
	Then I should see a e-learning website

	Scenario: Select try game
	Given I have reach the home page
	When I click on try button
	Then I shoud reach "try page"
