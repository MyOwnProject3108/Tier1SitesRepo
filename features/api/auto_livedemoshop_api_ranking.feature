@livedemoshop
@smartapi
Feature: Peerius Demo Shop SMART-API ranking

Scenario: Peerius Demo Shop SMART-ranking can be delivered on category page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I supply SMART-ranking setup info
    And I track the category page        
    Then I should get an OK status back
    And I should get at least 1 items of SMART-ranking content        

Scenario: Peerius Demo Shop SMART-ranking clicks can be tracked on category page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I supply SMART-ranking setup info
    When I track the category page
    And I track a click for the first SMART-ranking item
    Then I should get an OK status back
