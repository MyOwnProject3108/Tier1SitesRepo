@smartapi 
@ctshirts
Feature: SMART-API CT Shirts specific tests

Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works using SMART-API
    Given I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t4
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get an OK status back
    And the first SMART-content creative name should contain <category_name>
    And I should get at least 6 SMART-content creatives in the response
    Examples:
    | product    | category_name |
    | "SN061WHT" | "classic"     |
    | "FT097RYL" | "slim"        |
    | "RD034SKY" | "extra slim"  |
#    | "CK012COR" | "non-iron"    |
    | "EPA07GRY" | "Suits"       |
    | "LE083BLU" | "cufflinks"   |
    | "TH099RYL" | "Ties"        |
    | "MP027TAN" | "Shoes"       |
