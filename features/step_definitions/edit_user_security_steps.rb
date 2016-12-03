#encoding: utf-8
When(/^I try to access a(?:nother)? user's edit profile page directly$/) do
  visit "http://localhost:8000/users/20/edit"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should be on the login page$/) do
  expect(page).to have_xpath '//h1[contains(.,"Log In")]'
end

Then(/^I should be on the home page$/) do
  expect(page).to have_xpath '//h1[contains(.,"Welcome")]'
end

When(/^I go to a(?:nother)? user's profile page$/) do
  visit "http://localhost:8000/users/20"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I (?:should|do) not see the Edit link$/) do
  expect(page).to have_no_xpath '//a[@href="/users/21/edit" or contains(.,"Edit")]'
end