#encoding: utf-8
Given(/^I go to the signup page$/) do
  visit "http://localhost:8000/signup"
  expect(page).to have_no_content 'Routing Error'
end

When(/^I enter (.*) into the (.*) field$/) do |value, fieldname|
  fill_in('user[%1$s]' % [fieldname], :with => value)
end

When(/^I click the (.*) button$/) do |btnname|
  click_button(btnname)
end

Then(/^I should see a field to enter my (.*)$/) do |fieldname|
  expect(page).to have_xpath '//input[@name="user[%1$s]"]' % [fieldname]
end

Then(/^I should see a submit button$/) do
  expect(page).to have_xpath '//form[@class="new_user"]//input[@type="submit"]'
end

Then(/^I should see an error message saying (.*)$/) do |errorMessage|
  expect(page).to have_xpath '//div[@id="error_explanation"]//*[contains(.,"%1$s")]' % [errorMessage]
end

Then(/^I should not see an error message saying (.*)$/) do |errorMessage|
  expect(page).to have_no_xpath '//div[@id="error_explanation"]//*[contains(.,"%1$s")]' % [errorMessage]
end

Given(/^I enter a username that is (\d+) characters long$/) do |len|
  fill_in('user[username]', :with => "a" * len.to_i)
end

Given(/^I enter an email that is (\d+) characters long$/) do |len|
  fill_in('user[email]', :with => "a" * (len.to_i-6) + "@g.com")
end
