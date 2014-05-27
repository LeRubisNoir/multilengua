Given(/^I haven't fill the field$/) do
  expect(home_path).to have_selector h1,text: "Login Facebook"
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
end

Then(/^I shoud see "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Username or password empty"
end

Given(/^I haven't fill a field with wrong informations$/) do
  expect(home_path).to have_selector h1,text: "Login Facebook"
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
end

Then(/^I shoud see "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Wrong username or password"
end

Given(/^I have correctly filled the text fields$/) do
  expect(home_path).to have_selector h1,text: "Login Facebook"
end

When(/^I click on (.*?) $/) do |button|
  click_on(button)
end

Then(/^I shoud see "(.*?)"$/) do |arg1|
  expect(try_game_path).to have_selector h1,text: "Hello !"
end
