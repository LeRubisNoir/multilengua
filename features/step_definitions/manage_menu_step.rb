Given(/^I have the menu opened$/) do
  
end

When(/^I click about icon$/) do
  within("#about_icon") do      
    find(:link, "About").click
  end
end

Then(/^I should change page to About$/) do
  request.request_uri.should == send("abouts_path")
  response.should be_success
end

When(/^I click contact icon$/) do
  within("#contact_icon") do          
    find(:link, "Contact").click
  end
end

Then(/^I should change page to contact$/) do
  request.request_uri.should == send("contacts_path")
  response.should be_success
end

When(/^I click help icon$/) do
  within("#help_icon") do
    find(:link, "Help").click
  end
end

Then(/^I should change page to Help$/) do
  request.request_uri.should == send("helps_path")
  response.should be_success
end

When(/^I click home icon$/) do
  within("#home_icon") do
    find(:link, "Home").click
  end
end

Then(/^I should change page to Home$/) do
  request.request_uri.should == send("homes_path")
  response.should be_success
end

Given(/^I'm not loged in$/) do
  if session[:user_id] != nil
    raise "User log"
  end
end

When(/^I click Login icon$/) do
  within("#login_icon") do
    find(:link, "Login").click
  end
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

