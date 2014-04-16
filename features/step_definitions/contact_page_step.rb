Given(/^I am on the Contact page$/) do
  visit contact_path
end

Then(/^I should see title "(.*?)"$/) do |title|
  expect(contact_path).to have_selector "h1", text: title
end

Given(/^I have the menu opened$/) do
  pending #Check if the menu is open
end

When(/^I click contact icon$/) do
  within("#contact_icon") do
    find(:link, "Contact").click
  end
end

Then(/^I should change page to Contact$/) do
  request.request_uri.should == send("contacts_path")
  response.should be_success
end

