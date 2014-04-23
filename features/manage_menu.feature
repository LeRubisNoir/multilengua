Feature: Manage menu
	In order to select a page
	As an everybody
	I want to reach the selected page
        
        @javascript
	Scenario: Select About
	Given I have the menu opened
	When I click about icon
	Then I should change page to About
       
        @current 
        @javascript
	Scenario: Select Contact
	Given I have the menu opened
	When I click contact icon
	Then I should change page to contact

        @javascript
	Scenario: Select Help
	Given I have the menu opened
	When I click help icon
	Then I should change page to Help

        @javascript
	Scenario: Select Home
	Given I have the menu opened
	When I click home icon
	Then I should change page to Home
        
        @javascript
	Scenario: Select Login
	Given I have the menu opened 
	And I'm not loged in
	When I click Login icon
	Then I should change page to Login

        @javascript
	Scenario: Select Log out
	Given I have the menu opened
	And I'm loged in
	When I click logoff icon
	Then I should be loged off
	And I'm redirected to home page
