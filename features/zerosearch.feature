Feature: Zero search
  In order to get the most out of my shopping experience
  As a website user
  I want to see recommendations on the search page
  
Scenario Outline: Zero search recommendations are shown
    Given I am on the <site> searchpage
    When I search for <searchterm>
    Then I should see at least 1 recommendations
    Examples:
    | site | searchterm |
    | ctshirts | "handbags" |
    | cottontraders | "dvds" |  