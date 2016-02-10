Feature: Write Articles
  As a normal user
  I should not be able to merge articles to my blog

  Background:
    Given the following articles exist
      | title    | body         |
      | Foobar   | LoremIpsum   |
      | Foobar 2 | LoremIpsum 2 |

  Scenario: Merge articles
    Given I am on the article page for "Foobar"
    And I should not see "Merge"

