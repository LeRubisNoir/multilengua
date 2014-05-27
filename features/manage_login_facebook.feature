Feature: Manage login page
        In order to learn new language
        As an everybody
        I want to sea a multilangual website

        @javascript
	@current
        Scenario: Test blank 
        Given I haven't fill the field
	When I click on the login button
        Then I should see "Username or password empty" in loginFb's "h1"

	@current
        Scenario: Wrong username or password 
        Given I haven't fill a field with wrong informations
	When I click on the login button
        Then I should see "Wrong username or password" in loginFb's "h1"


        Scenario: Correct login
        Given I have correctly filled the text fields
        When I clck on the loin button
        Then I should see "Hello !" in a loginFb's "h1"

