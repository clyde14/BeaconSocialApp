#encoding: utf-8
When(/^I go to the signup page$/) do
  visit "http://localhost:8000/signup"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see a field to enter my (.*)$/) do |fieldname|
  expect(page).to have_xpath '//input[@name="user[%1$s]"]' % [fieldname]
end

Then(/^I should see a submit button$/) do
  expect(page).to have_no_content 'Submit button'
  expect(page).to have_xpath '//form[@class="new_user"]//input[@type="submit"]'
end