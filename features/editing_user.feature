# feature/editing_user.feature
Feature: Edit Profile
As a user
I want to edit my profile
So that I can portray the desired image of myself

Scenario: User can change username
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
Then I should see a field to enter my user's username

Scenario: User can change nickname
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
Then I should see a field to enter my user's nickname

Scenario: User can change email
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
Then I should see a field to enter my user's email

Scenario: User sees Update User button
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
Then I should see an Update User button

Scenario: App rejects empty username
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter  into the user's username field
When I click the Update User button
Then I should see an error_explanation message saying Username can't be blank

Scenario: App rejects empty email
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter  into the user's email field
When I click the Update User button
Then I should see an error_explanation message saying Email can't be blank

Scenario: App rejects empty password
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter  into the user's password field
And I enter  into the user's password_confirmation field
When I click the Update User button
Then I should see an error_explanation message saying Password can't be blank

Scenario: App rejects short password
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter Qw_12 into the user's password field
And I enter Qw_12 into the user's password_confirmation field
When I click the Update User button
Then I should see an error_explanation message saying Password is too short

Scenario: App rejects mismatching password
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter ABC_easy_as_123 into the user's password field
And I enter 123_ABC_easy into the user's password_confirmation field
When I click the Update User button
Then I should see an error_explanation message saying Password confirmation doesn't match Password

Scenario: App rejects invalid email (missing @)
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter test_user_at_site.com into the user's email field
When I click the Update User button
Then I should see an error_explanation message saying Email is invalid

Scenario: App rejects invalid email (missing .)
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter test_user@site_com into the user's email field
When I click the Update User button
Then I should see an error_explanation message saying Email is invalid

Scenario: App accepts valid email
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter test_user@site.com into the user's email field
When I click the Update User button
Then I should not see an error_explanation message saying Email is invalid

Scenario: App rejects usernames over 40 characters long
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter a username that is 41 characters long
When I click the Update User button
Then I should see an error_explanation message saying Username is too long

Scenario: App rejects emails over 255 characters long
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter an email that is 256 characters long
When I click the Update User button
Then I should see an error_explanation message saying Email is too long

Scenario: App rejects duplicate username
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to my edit profile page
And I enter beaconsocialapp into the user's username field
And I enter beaconsocialapp@whatever.net into the user's email field
When I click the Update User button
Then I should see an error_explanation message saying Username has already been taken


