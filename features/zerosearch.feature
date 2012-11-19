Feature: Zero search
  In order to get the most out of my shopping experience
  As a website user
  I want to see recommendations on the search page
  
Scenario Outline: Zero search recommendations are shown
    Given I am on the <site> searchpage
    When I search for <searchterm>
    Then I should see at least 1 recommendation
    Examples:
    | site          | searchterm |
    | ctshirts      | "handbags" |
    | cottontraders | "dvds"     |

#
# SMART-API zero-search
#
@smartapi @wip @internal
Scenario: SMART-API v1.1 
  Given I am using SMART-API to access livedemoshop
  When I track a search results page
  Then I should get an OK status back
  And I should see at least 1 SMART-rec in the response
    