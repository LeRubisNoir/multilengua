Given(/^I have click on the website url$/) do
  visit home_page_path
  #pending # express the regexp above with the code you wish you had
end

When(/^I arrived on the home page$/) do
  expect(home_page_path).to have_selector h1,text: "homepage"
  #pending # express the regexp above with the code you wish you had
end

Then(/^I should see a e\-learning website$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have reach the home page$/) do
  expect(home_page_path).to have_selector h1,text: "homepage"
  #pending # express the regexp above with the code you wish you had
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
  #pending # express the regexp above with the code you wish you had
end

Then(/^I shoud reach "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Trygame"
  #pending # express the regexp above with the code you wish you had
end
