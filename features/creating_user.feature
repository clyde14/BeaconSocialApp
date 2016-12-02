# feature/creating_user.feature
Feature: Create User
As a visitor
I want to create an account
So that I can use the full functionality of the website

Scenario: User can choose username
Given I go to the signup page
Then I should see a field to enter my user's username

Scenario: User can choose nickname
Given I go to the signup page
Then I should see a field to enter my user's nickname

Scenario: User can enter email
Given I go to the signup page
Then I should see a field to enter my user's email

Scenario: User sees submit button
Given I go to the signup page
Then I should see a submit button

Scenario: App rejects empty username
Given I go to the signup page
And I enter  into the user's username field
When I click the Create User button
Then I should see an error_explanation message saying Username can't be blank

Scenario: App rejects empty email
Given I go to the signup page
And I enter  into the user's email field
When I click the Create User button
Then I should see an error_explanation message saying Email can't be blank

Scenario: App rejects empty password
Given I go to the signup page
And I enter  into the user's password field
And I enter  into the user's password_confirmation field
When I click the Create User button
Then I should see an error_explanation message saying Password can't be blank

Scenario: App rejects short password
Given I go to the signup page
And I enter Qw_12 into the user's password field
And I enter Qw_12 into the user's password_confirmation field
When I click the Create User button
Then I should see an error_explanation message saying Password is too short

Scenario: App rejects mismatching password
Given I go to the signup page
And I enter ABC_easy_as_123 into the user's password field
And I enter 123_ABC_easy into the user's password_confirmation field
When I click the Create User button
Then I should see an error_explanation message saying Password confirmation doesn't match Password

Scenario: App rejects invalid email (missing @)
Given I go to the signup page
And I enter test_user_at_site.com into the user's email field
When I click the Create User button
Then I should see an error_explanation message saying Email is invalid

Scenario: App rejects invalid email (missing .)
Given I go to the signup page
And I enter test_user@site_com into the user's email field
When I click the Create User button
Then I should see an error_explanation message saying Email is invalid

Scenario: App accepts valid email
Given I go to the signup page
And I enter test_user@site.com into the user's email field
When I click the Create User button
Then I should not see an error_explanation message saying Email is invalid

Scenario: App rejects usernames over 40 characters long
Given I go to the signup page
And I enter a username that is 41 characters long
When I click the Create User button
Then I should see an error_explanation message saying Username is too long

Scenario: App rejects emails over 255 characters long
Given I go to the signup page
And I enter an email that is 256 characters long
When I click the Create User button
Then I should see an error_explanation message saying Email is too long

Scenario: App rejects duplicate username
Given I go to the signup page
And I enter beaconsocialapp into the user's username field
And I enter beaconsocialapp@whatever.net into the user's email field
When I click the Create User button
Then I should see an error_explanation message saying Username has already been taken


