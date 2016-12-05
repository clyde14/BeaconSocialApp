#encoding: utf-8
Then(/^I should be on my following page$/) do
  expect(page).to have_xpath '//h3[contains(.,"Following")]'
end

Then(/^I should be on my followers page$/) do
  expect(page).to have_xpath '//h3[contains(.,"Followers")]'
end