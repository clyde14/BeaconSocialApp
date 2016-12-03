# feature/sending_signal.feature
Feature: Send Signal
As a registered user
I want to send a signal
So that I can share something with my followers

Scenario: User can enter signal content
When I go to the send signal page
Then I should see a box to enter a signal's content

Scenario: User sees submit button for signal
When I go to the send signal page
Then I should see a signal submit button