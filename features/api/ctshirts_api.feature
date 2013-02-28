@smartapi 
@ctshirts
Feature: SMART-API CT Shirts specific tests

Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works using SMART-API
    Given I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t3
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then the first SMART-content creative name should contain <category_name>
    Examples:
    | product    | category_name |
    | "LE083BLU" | "cufflinks"   |
    | "TH099RYL" | "Ties"        |
    | "MP027TAN" | "Shoes"       |
