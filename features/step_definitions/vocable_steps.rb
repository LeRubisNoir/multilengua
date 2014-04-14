Given(/^I am on the vocable page$/) do
  #pending # express the regexp above with the code you wish you had
  page = visit vocables_path
end

Then(/^I should see "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  #pending # express the regexp above with the code you wish you had
expect(page).to have_selector selector, text: text
end

