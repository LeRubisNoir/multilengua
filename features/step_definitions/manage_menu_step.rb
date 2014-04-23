Given(/^I have the menu opened$/) do
   visit home_path
   find("a#menu.left-off-canvas-toggle.menu-icon").click  
end

When(/^I click about icon$/) do
    find("#about_icon").click
end

Then(/^I should change page to About$/) do
  assert page.current_path == about_path
end

When(/^I click contact icon$/) do
  sleep(2)
  find("#contact_icon").click
end

Then(/^I should change page to contact$/) do
  sleep(2)
  assert page.current_path == contact_path
end

When(/^I click help icon$/) do
   find("#help_icon").click
end

Then(/^I should change page to Help$/) do
  assert page.current_path == help_path
end

When(/^I click home icon$/) do
  find("#home_icon").click
end

Then(/^I should change page to Home$/) do
  assert page.current_path == home_path
end

Given(/^I'm not loged in$/) do
  if session[:user_id] != nil
    raise "User log"
  end
end

When(/^I click Login icon$/) do
  find("#login_icon").click
end

Then(/^I should change page to Login$/) do
  request.request_uri.should == send("logins_path")
  response.should be_success
end

Given(/^I'm loged in$/) do
  if session[:user_id] == nil 
    raise "User not log"  
  end
end

When(/^I click logoff icon$/) do
  within("#logoff_icon") do
    find(:link, "Logoff").click
  end
end

Then(/^I should be loged off$/) do
  if session[:user_id] != nil
    raise "User not log off"
  end
end

Then(/^I'm redirected to home page$/) do
  visit homes_path
  request.request_uri.should == send("homes_path")
  response.should be_success
end

