Feature: Manage top bar
	In order to access menu or connexion
	As an everybody
	I want to reach menu or connexion

	Scenario: Select Menu Closed
	Given I have the menu closed
	When I click menu icon
	Then I should see the menu 

	Scenario: Select Menu Opened
	Given I have the menu opened
	When I click menu icon
	Then I should see the menu hidding

	Scenario: Select Login
	Given I'm not loged on
	When I click login icon
	Then I should see the login page 

	Scenario: Login Button visibility
	Given I'm loged on
	When I'm on a page
	Then I shouldn't see the login button in the top bar