#encoding: utf-8
Then(/^I should see signal_posts$/) do
  expect(page).to have_xpath '//h3[contains(.,"Signals")]'
  expect(page).to have_xpath '//ol[@class="signal_posts"]'
  expect(page).to have_xpath '//ol/li/span[@class="nickname"]'
  expect(page).to have_xpath '//ol/li/span[@class="username"]'
  expect(page).to have_xpath '//ol/li/span[@class="content"]'
  expect(page).to have_xpath '//ol/li/span[@class="timestamp"]'
end