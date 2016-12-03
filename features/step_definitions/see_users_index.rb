#encoding: utf-8
Given(/^I go to the users page$/) do
  visit "http://localhost:8000/users"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see a list of users$/) do
  expect(page).to have_xpath '//table//th[contains(.,"Username")]'
end

Then(/^I should not see an(?:yone else's)? edit link$/) do
  expect(page).to have_no_xpath '//a[@href="/users/20/edit"]'
end

Then(/^I should not see a(?:nyone else's)? delete link$/) do
  expect(page).to have_no_xpath '//a[@data-method="delete" and href="/users/20"]'
end

Then(/^I should see my edit link$/) do
  expect(page).to have_xpath '//a[@href="/users/21/edit" and contains(.,"Edit")]'
end

Then(/^I should see my delete link$/) do
  expect(page).to have_xpath '//a[@data-method="delete" and @href="/users/21" and contains(.,"Delete")]'
end