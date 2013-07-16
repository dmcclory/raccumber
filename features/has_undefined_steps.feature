Feature: Run Scenario With Undefined Steps
  As a user, I might have some Gherkin files that I want to run through a
    process similar to cucumber

Scenario: user wants to upcase a string
Given that I have an object with text foo
When I upcase it
Then I should get an object with text FOO
