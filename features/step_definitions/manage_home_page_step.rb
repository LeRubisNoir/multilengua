Given(/^I have write the url website$/) do
  visit home_path
end

Then(/^I should see "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  expect(page).to have_selector selector, text: text
end

Given(/^I have reach the home page$/) do
  expect(home_path).to have_selector h1,text: "Home Page"
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
end

Then(/^I shoud see "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Trygame"
end

