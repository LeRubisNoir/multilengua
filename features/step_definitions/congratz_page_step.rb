Given(/^I am on the Congratz page$/) do
  visit congratz_path
end

Then(/^I should see title "(.*?)" in the selector "(.*?)"$/) do |title, selector|
  expect(congratz_path).to have_selector selector, text: title
end

Then(/^I should see text "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  expect(congratz_path).to have_selector selector, text: text
end

Then(/^I should see the text "(.*?)" in the selector "(.*?)" with the class "(.*?)"$/) do |text, selector, class_name|
  expect(congratz_path).to have_css selector.concat(".").concat(class_name) ,text: text 
end

Then(/^I should see the button with the text "(.*?)" in the selector "(.*?)" with the class "(.*?)"$/) do |text, selector, class_name|
  expect(congratz_path).to have_css selector.concat(".").concat(class_name) ,text: text
end

