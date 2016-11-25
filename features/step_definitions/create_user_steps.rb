#encoding: utf-8
When(/^I go to the signup page$/) do
  visit ui_url 'users/new'
end

Then(/^I should see a field to enter a username$/) do |infoType|
  page.should have_content 'Username'
end

Then(/^I should see a field to enter a nickname$/) do |infoType|
  page.should have_content 'Nickname'
end

Then(/^I should see a submit button$/) do
  page.should have_content 'Submit button'
end