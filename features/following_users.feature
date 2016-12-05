# feature/folowing_users.feature
Feature: Follow and unfollow users
As a user
I want to follow another user
So that I can see their signals in my feed

Scenario: User can unfollow another user
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
And I click the Following link
And I should be on my following page
And I should see beaconsocialapp displayed in a list item
When I go to beaconsocialapp's user profile
Then I should see an Unfollow button
When I click the Unfollow button
Then I should see a Follow button
When I click the Followers link
Then I should not see testuser displayed in a list item

Scenario: User sees appropriate feed items on homepage (not following beaconsocialapp)
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I go to the home page
Then I should not see signals by beaconsocialapp
And I should see signals by testuser
And I should not see signals by nobodyfollowsme

Scenario: User can follow another user
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
And I go to beaconsocialapp's user profile
Then I should see a Follow button
When I click the Follow button
Then I should see an Unfollow button
When I click the Followers link
Then I should see testuser displayed in a list item

Scenario: User sees appropriate feed items on homepage (following beaconsocialapp)
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I go to the home page
Then I should see signals by beaconsocialapp
And I should see signals by testuser
And I should not see signals by nobodyfollowsme