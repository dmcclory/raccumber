Feature: Parse Gherkin files
  As a user, I might have some Gherkin files that I want to run through a
    process similar to cucumber

Scenario: user wants to parse some Gherkin
Given that I have an object with text foo
And I have a second object text bar
When I combine them
Then I should get a third object with text foobar
