Given(/^I have write the url website$/) do
  visit home_path
  #pending # express the regexp above with the code you wish you had
end

Then(/^I can see the home page view$/) do
  page.should have_selector 'h1', text: "Home Page"
  #pending # express the regexp above with the code you wish you had
end

Given(/^I have reach the home page$/) do
  expect(home_path).to have_selector h1,text: "Home Page"
  #pending # express the regexp above with the code you wish you had
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
  #pending # express the regexp above with the code you wish you had
end

Then(/^I shoud see "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Trygame"
  #pending # express the regexp above with the code you wish you had
end

