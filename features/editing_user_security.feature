# feature/editing_user_security.feature
Feature: Edit Profile is Secure
As a user
I do not want others to be able to edit my profile
So that my information is safe

Scenario: Visitor can't visit edit user profile page directly
Given I go to the login page
And I see the logged-out navbar items
When I try to access a user's edit profile page directly
Then I should be on the login page
And I should see a danger flash saying Please log in.

Scenario: Visitor can't see link to edit user profile page
Given I go to the login page
And I see the logged-out navbar items
When I go to a user's profile page
Then I should not see the Edit link

Scenario: User can't visit another user's edit user profile page directly
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I try to access another user's edit profile page directly
Then I should be on the home page

Scenario: User can't see link to edit another user's profile page
Given I go to the login page
And I see the logged-out navbar items
And I enter testuser into the session's username field
And I enter theRightPassword456 into the session's password field
And I click the Log in button
And I should not see a danger flash saying Invalid username/password combination
And I should be on testuser's user profile
And I should see the logged-in navbar items
When I go to another user's profile page
Then I should not see the Edit link