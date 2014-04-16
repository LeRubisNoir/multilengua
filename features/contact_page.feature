Feature: Acess contact page
  In order to reach the contact page
  As an everybody
  I want to reach the selected page

  Scenario: Be on Contact
  Given I am on the Contact page
  Then I should see title "Contact"

  Scenario: Select Contact
  Given I have the menu opened
  When I click contact icon
  Then I should change page to Contact
