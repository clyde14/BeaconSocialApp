#encoding: utf-8
Given(/^I go to my edit profile page$/) do
  click_link('Edit')
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see an Update User button$/) do
  expect(page).to have_xpath '//form[@class="edit_user"]//input[@type="submit" and @value="Update User"]'
end