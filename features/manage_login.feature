Feature: Manage login page
        In order to learn new language
        As an everybody
        I want to sea a multilangual website

        @current
        Scenario: Show loginPage
        Given I have write the url login page
        Then I should see "Login" in the selector "h1"

        @current
        Scenario: Show link Sign in,  register, sign in with google in page login
        Given I have write the url login page
        When I am not login
        Then I should see "Sign in" in the selector "a"
        Then I should see "Register" in the selector "a"
        Then I should see "Sign in with Google" in the selector "a"

        Scenario: Show link log out in page login
        Given I have write the url login page
        When I am login
        Then I should see "Log out" in the selector "a"

