# feature/creating_user.feature
Feature: Create User
As a visitor
I want to see a welcome page
So that I can feel welcome at the site and know what to do next

Scenario: User sees welcome message
When I go to the home page
Then I should see the welcome message

Scenario: User sees link to signup page
When I go to the home page
Then I should see a link to the signup page