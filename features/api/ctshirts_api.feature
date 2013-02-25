@smartapi 
@ctshirts
Feature: SMART-API: CT Shirts  

#
# SMART-content
#
Scenario: SMART-content can be delivered using SMART-API
    Given I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t3
#    And I am using client token 677ab692r2t4
    When I track the home page        
    Then I should get an OK status back
    And I should get at least 6 SMART-content creatives in the response
    

Scenario: SMART-content clicks can be tracked using SMART-API
    Given I am using SMART-API to access ctshirts
#    And I am using client token 677ab692r2t3
    And I am using client token 677ab692r2t4
    When I track the home page
    And I track a click for the first SMART-content creative
    Then I should get an OK status back
    

Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works using SMART-API
    Given I am using SMART-API to access ctshirts
#    And I am using client token 677ab692r2t3
    And I am using client token 677ab692r2t4
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then the first SMART-content creative name should contain <category_name>
    Examples:
    | product         | category_name |
    | "prod-ev003wht" | "Shirts"      |
    | "prod-tv017baq" | "Ties"        |
    | "prod-mc075bgd" | "Shoes"       |