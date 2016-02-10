Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | title    | body         |
      | Foobar   | LoremIpsum   |
      | Foobar 2 | LoremIpsum 2 |

  Scenario: Merge articles
    Given I am on the article page for "Foobar"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then the article "Foobar" should have body "LoremIpsum LoremIpsum 2"


