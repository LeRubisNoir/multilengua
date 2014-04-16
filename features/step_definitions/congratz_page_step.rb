Given(/^I am on the Congratz page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see title "(.*?)" in the selector "(.*?)"$/) do |title, selector|
  expect(congratz_path).to have_selector selector, text: title
end

Then(/^I should see text "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  expect(congratz_path).to have_selector selector, text: text
end

Then(/^I should see the text "(.*?)" in the selector "(.*?)" with the class "(.*?)"$/) do |text, selector, class_name|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the button with the text "(.*?)" in the selector "(.*?)" with the class "(.*?)"$/) do |text, selector, class_name|
  pending # express the regexp above with the code you wish you had
end

