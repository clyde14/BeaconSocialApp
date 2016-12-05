#encoding: utf-8
Given(/^I go to beaconsocialapp's user profile$/) do
  visit 'http://localhost:8000/users/20'
  expect(page).to have_no_content 'Routing Error'
end

When(/^I click on the (.*) link$/) do |linkname|
  click_link linkname
end

Then(/^I should see an Unfollow button$/) do
  expect(page).to have_xpath '//input[@type="submit" and @value="Unfollow"]'
end

Then(/^I should see a Follow button$/) do
  expect(page).to have_xpath '//input[@type="submit" and @value="Follow"]'
end

Then(/^I should see (.*) displayed in a list item$/) do |licontent|
  expect(page).to have_xpath '//li[contains(.,"%1$s")]' % [licontent]
end

Then(/^I should not see (.*) displayed in a list item$/) do |licontent|
  expect(page).to have_no_xpath '//li[contains(.,"%1$s")]' % [licontent]
end

Then(/^I should see signals by (.*)$/) do |username|
  expect(page).to have_xpath '//span[@class="username" and contains(.,"(@%1$s)")]' % [username]
end

Then(/^I should not see signals by (.*)$/) do |username|
  expect(page).to have_no_xpath '//span[@class="username" and contains(.,"(@%1$s)")]' % [username]
end