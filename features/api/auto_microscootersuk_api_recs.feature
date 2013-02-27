@microscootersuk
@smartapi
Feature: Microscooters UK SMART-API recs

Scenario: Microscooters UK SMART-recs can be delivered on product page using SMART-API
    Given I am using SMART-API to access microscootersuk
    And I am using client token j83ui7a6shg3
    When I track the product page        
    Then I should get an OK status back
    And I should get at least 1 SMART-recs in the response 

Scenario: Microscooters UK SMART-recs clicks can be tracked on product page using SMART-API
    Given I am using SMART-API to access microscootersuk
    And I am using client token j83ui7a6shg3
    When I track the product page
    And I track a click for the first SMART-rec
    Then I should get an OK status back

@zerosearch
Scenario: Microscooters UK Zerosearch SMART-recs can be delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-recs in the response
