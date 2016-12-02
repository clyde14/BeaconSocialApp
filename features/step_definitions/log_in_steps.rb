#encoding: utf-8
Given(/^I go to the login page$/) do
  visit "http://localhost:8000/login"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see a login button$/) do
  expect(page).to have_xpath '//form[@action="/login"]//input[@type="submit"]'
end

Then(/^I should see an? (.*) flash saying (.*)$/) do |messageType, errorMessage|
  expect(page).to have_xpath '//div[@class="%1$s" and contains(.,"%2$s")]' % [messageType, errorMessage]
end

Then(/^I should not see an? (.*) flash saying (.*)$/) do |messageType, errorMessage|
  expect(page).to have_no_xpath '//div[@class="%1$s"]//*[contains(.,"%2$s")]' % [messageType, errorMessage]
end
