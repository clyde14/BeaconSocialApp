#encoding: utf-8
Given(/^I am logged in$/) do
	  visit 'login_path'
	  expect(page).to have_no_content 'Routing Error'
	  
	  fill_in('session[username]', :with => 'testuser')
	  fill_in('session[password]', :with => 'theRightPassword456')
	  
	  click_button('Log in')
	  expect(page).to have_no_content 'Routing Error'
end

Given(/^I go to my edit profile page$/) do
  click_link('Edit')
  expect(page).to have_no_content 'Routing Error'
end

Then(/^I should see an Update User button$/) do
  expect(page).to have_xpath '//form[@class="edit_user"]//input[@type="submit" and @value="Update User"]'
end