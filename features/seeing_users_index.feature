# feature/seeing_users_index.feature
Feature: See Users Index
As a user
I want to view the full list of users
So that I can find users who I want to follow

Scenario: Visitor can see user index
Given I go to the users page
Then I should see a list of users
And I should not see an edit link
And I should not see a delete link

Scenario: User can see user index
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
And I go to the users page
Then I should see a list of users
And I should see my edit link
And I should not see anyone else's edit link
And I should see my delete link
And I should not see anyone else's delete link
