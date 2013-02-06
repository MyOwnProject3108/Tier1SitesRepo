Feature: CT Shirts SMART-API 

@smartapi @ctshirts
    Scenario: SMART-content clicks can be tracked using SMART-API
        Given I am using SMART-API to access ctshirts
        And I am using client token 677ab692r2t3
        When I track the home page
        And I track a click for the first SMART-content creative
        Then I should get an OK status back
        
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