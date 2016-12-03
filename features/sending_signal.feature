# feature/sending_signal.feature
Feature: Send Signal
As a registered user
I want to send a signal
So that I can share something with my followers

Scenario: User can enter signal content
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I go to the home page
Then I should see a box to enter a signal's content

Scenario: User sees submit button for signal
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on Alice (testuser)'s user profile
And I should see the logged-in navbar items
When I go to the home page
Then I should see a signal submit button