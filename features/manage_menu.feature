Feature: Manage menu
	In order to select a page
	As an everybody
	I want to reach the selected page

	Scenario: Select About
	Given I have the menu opened
	When I click about icon
	Then I should change page to About

	Scenario: Select Help
	Given I have the menu opened
	When I click help icon
	Then I should change page to Help

	Scenario: Select Home
	Given I have the menu opened
	When I click home icon
	Then I should change page to Home

	Scenario: Select Login
	Given I have the menu opened 
	And I'm not loged in
	When I click Login icon
	Then I should change page to Login

	Scenario: Select Log out
	Given I have the menu opened
	And I'm loged in
	When I click logoff icon
	Then I should be loged off
	And I'm redirected to home page
