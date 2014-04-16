Feature: Access congratz
  In order to reach the congratz page
  As an everybody
  I should finish the exercise

  Scenario: Be on Congratz
  Given I am on the Congratz page
  Then I should see title "Congratz" in the selector "h1"
  Then I should see text "Your score :" in the selector "p"
  Then I should see the text "Did you like it?? To continue just login !" in the selector "p" with the class "continue_paragraph"
  Then I should see the button with the text "Log in" in the selector "button" with the class "login_button"