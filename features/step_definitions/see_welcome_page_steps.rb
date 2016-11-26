#encoding: utf-8
When(/^I go to the home page$/) do
  visit "http://localhost:8000/"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content 'Welcome to Beacon'
end

Then(/^I should see a link to the signup page$/) do
  expect(page).to have_xpath '//a[@href and @name="signuplink"]'
end