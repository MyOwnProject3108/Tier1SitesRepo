@livedemoshop
@smartapi
Feature: Peerius Demo Shop SMART-API recs

Scenario: Peerius Demo Shop SMART-recs can be delivered on home page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I track the home page        
    Then I should get an OK status back
    And I should get at least 1 SMART-recs in the response 

Scenario: Peerius Demo Shop SMART-recs clicks can be tracked on home page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I track the home page
    And I track a click for the first SMART-rec
    Then I should get an OK status back

@zerosearch
Scenario: Peerius Demo Shop Zerosearch SMART-recs can be delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-recs in the response
