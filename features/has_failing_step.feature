Feature: Run Scenarios with Failing Steps
  As a user, I might have some failing scenarios.

  I would like to know what they are

Scenario: user wants to see which tests don't work
Given that I have an object with text foo
When I call a method that doesn't exist
Then I should see something about an undefined message
