# feature/creating_user.feature
Feature: Edit Profile
As a user
I do not want others to be able to edit my profile
So that my information is safe

Scenario: Visitor can't visit edit user profile page directly
Given I go to the login page
And I see the logged-out navbar items
When I try to access a user's edit profile page directly
Then I should be on the login page
And I should not see a danger flash saying Please log in.

Scenario: Visitor can't see link to edit user profile page
Given I go to the login page
And I see the logged-out navbar items
When I go to a user's profile page
Then I should not see the Edit link
