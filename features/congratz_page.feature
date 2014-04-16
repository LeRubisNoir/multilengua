Feature: Access congratz
  In order to reach the congratz page
  As an everybody
  I should finish the exercise

  Scenario: Going to Congratz page
  Given I have finished the exercise
  When I click on the next button
  Then I should change page to Congratz

  Scenario: Be on Congratz
  Given I am on the Congratz page
  Then I should see title "Congratz" in the selector "h1"
  Then I should see text "Your score :" in the selector "p"
  Then I should see the button "Did you like it?? \n To continue just login !" in the selector "p" with the class "continue_paragraph"
  Then I should see the button "Log in" in the selector "button" with the class "login_button"