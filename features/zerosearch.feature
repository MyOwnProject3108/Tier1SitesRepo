Feature: Zero search
  In order to get the most out of my shopping experience
  As a website user
  I want to see recommendations on the search page

@ctshirts @cottontraders  
Scenario Outline: Zero search recommendations are shown
    Given I am on the <site> searchpage
    When I search for <searchterm>
    Then I should end up on the search results page
    And I should see at least 1 SMART-rec
    Examples:
    | site          | searchterm |
    | ctshirts      | "handbags" |
    | cottontraders | "dvds"     |

#
# SMART-API zero-search
#
@smartapi @internal
Scenario: SMART-API v1.1 
  Given I am using SMART-API to access ctshirts
  And I am using client token 677ab692r2t3
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response
    
