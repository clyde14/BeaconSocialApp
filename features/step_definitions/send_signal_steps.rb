#encoding: utf-8
When(/^I go to the send signal page$/) do
  visit "http://localhost:8000/signal_posts/new"
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see a box to enter a signal's (.*)$/) do |fieldname|
  expect(page).to have_xpath '//textarea[@name="signal_post[%1$s]"]' % [fieldname]
end

Then(/^I should see a field to enter a signal's (.*)$/) do |fieldname|
  expect(page).to have_xpath '//input[@name="signal_post[%1$s]"]' % [fieldname]
end

Then(/^I should see a signal submit button$/) do
  expect(page).to have_xpath '//form[@class="new_signal_post"]//input[@type="submit"]'
end