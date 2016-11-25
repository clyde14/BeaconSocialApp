# feature/creating_user.feature
Feature: Create User
As a visitor
I want to create an account
So that I can use the full functionality of the website

Scenario: User can choose username
When I go to the signup page
Then I should see a field to enter a username

Scenario: User can choose nickname
When I go to the signup page
Then I should see a field to enter a nickname

Scenario: User sees submit button
When I go to the signup page
Then I should see a submit button