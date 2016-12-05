#encoding: utf-8
Given(/^I go to the login page$/) do
  visit "http://localhost:8000/login"
  expect(page).to have_no_content 'Routing Error'
end

When(/^I click the (.*) link$/) do |link|
  click_link '%1$s' % [link]
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

Then(/^I should be on (.*) \((.*)\)'s user profile$/) do |nickname, username|
  expect(page).to have_xpath '//h1[contains(.,"View %1$s (@%2$s)\'s User Profile")]' % [nickname, username]
  expect(page).to have_xpath '//main[contains(.,"%1$s")]' % [username]
end

Then(/^I(?: should)? see the logged\-out navbar items$/) do
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Home")]'
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Log in")]'
  
  expect(page).to have_no_xpath '//nav//*[@class="navbaritem" and contains(.,"Users")]'
  expect(page).to have_no_xpath '//nav//*[@class="navbaritem" and contains(.,"Profile")]'
  expect(page).to have_no_xpath '//nav//*[@class="navbaritem" and contains(.,"Log out")]'
end

Then(/^I(?: should)? see the logged\-in navbar items$/) do
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Home")]'
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Users")]'
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Profile")]'
  expect(page).to have_xpath '//nav//*[@class="navbaritem" and contains(.,"Log out")]'
  
  expect(page).to have_no_xpath '//nav//*[@class="navbaritem" and contains(.,"Log in")]'
end
