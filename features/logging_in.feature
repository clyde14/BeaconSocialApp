# feature/creating_user.feature
Feature: Log in
As a registered user
I want to log in
So that I can access my information and use the full functionality of the website

Scenario: User can enter username on login
Given I go to the login page
Then I should see a field to enter my session's username

Scenario: User can enter password on login
Given I go to the login page
Then I should see a field to enter my session's password

Scenario: User sees login button
Given I go to the login page
Then I should see a login button

Scenario: App rejects invalid username/password (empty)
Given I go to the login page
And I enter  into the session's username field
And I enter  into the session's password field
When I click the Log in button
Then I should see a danger flash saying Invalid username/password combination

Scenario: App rejects invalid username/password (valid user, invalid password)
Given I go to the login page
And I enter testuser into the session's username field
And I enter aWrongPassword123 into the session's password field
When I click the Log in button
Then I should see a danger flash saying Invalid username/password combination

Scenario: App accepts valid username/password
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
When I click the Log in button
Then I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I click the Log out link
Then I should see the logged-out navbar items


