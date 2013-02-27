@livedemoshop
@smartapi
Feature: Peerius Demo Shop SMART-API content

Scenario: Peerius Demo Shop SMART-content can be delivered on home page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I track the home page        
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response        

Scenario: Peerius Demo Shop SMART-content clicks can be tracked on home page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    When I track the home page
    And I track a click for the first SMART-content creative
    Then I should get an OK status back
