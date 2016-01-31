Feature: Create Category
  As an author
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category page shown
    Given I am on the admin page
    Then I should see "Dashboard"
    And I should see "Categories"
    When I go to categories page
    Then I should see "Permalink"


  Scenario: Create category page not shown when blog created
    Given I am on the admin page
    When I go to categories page
    Then I should see "Permalink"
    When I fill in "category_name" with "My category"
    And I fill in "category_keywords" with "Ruby, Rails"
    And I fill in "category_description" with "This is all about programming in Ruby on Rails"
    When I press "Save"
    Then I should see "Category was successfully saved"

