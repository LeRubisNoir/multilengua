Given(/^I am logged in and i have choose the exercise (\d+)$/) do |exercise_number|
  if session[:user_id] == nil
    raise "User not logged"
  end
  visit exercise_path
  request.request_uri.should == send("exercise_path")
  response.should be_success
end

When(/^I click on the vocable group named "(.*?)"$/) do |group_name|
  find(:link, group_name).click
end

Then(/^i should start the exercise (\d+) with the vocable group named "(.*?)"$/) do |exercise_number, group_name|
  request.request_uri.should == send("exercise_path")
  response.should be_success
  if session[:vocable_group] != group_name
    raise "User not in the good group"
  end
end

