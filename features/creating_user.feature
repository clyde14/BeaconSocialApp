# feature/creating_user.feature
Feature: Create User
As a visitor
I want to create an account
So that I can use the full functionality of the website

Scenario: User can choose username
Given I go to the signup page
Then I should see a field to enter my username

Scenario: User can choose nickname
Given I go to the signup page
Then I should see a field to enter my nickname

Scenario: User can enter email
Given I go to the signup page
Then I should see a field to enter my email

Scenario: User sees submit button
Given I go to the signup page
Then I should see a submit button

Scenario: App rejects empty username
Given I go to the signup page
And I enter  into the username field
When I click the Create User button
Then I should see an error message saying Username is empty
