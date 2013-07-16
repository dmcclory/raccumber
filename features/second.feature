Feature: Parse Gherkin files
  As a user, I might have some Gherkin files that I want to run through a
    process similar to cucumber

Scenario: user wants to parse some Gherkin
Given that I have an object with text foo
And I have a second object with text bar
When I combine them
Then I should get a third object with text foobar

Scenario: user wants to downcase a string
Given that I have an object with text FOO
When I downcase it
Then I should get an object with text foo
