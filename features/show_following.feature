# feature/show_folowing.feature
Feature: Show who a user follows and is followed by
As a user
I want to see who users follow and are followed by
So that I can better curate my experience on the site

Scenario: User can see their own followers
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I click the Following link
Then I should be on my following page

Scenario: User can see their own followers
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I click the Followers link
Then I should be on my followers page