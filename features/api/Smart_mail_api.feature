@smartmailapi
@ecircle
Feature: SMART-MAILAPI  test for Mail API specific tests

Scenario: SMART-mail API works with site and token id using SMART-API
	Given I am using SMARTMailAPI to access livedemoshop
  #  And I am using client token gfsdkl47gh3248
	And I am using wid 776
    When I supply SMART-mail parameters 
	And I am using client siteid  776
    And I should get at least 1 items of SMART-mail URL
    Then I should get an OK status back