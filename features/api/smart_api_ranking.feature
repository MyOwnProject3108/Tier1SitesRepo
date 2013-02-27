@livedemoshop
@smartapi
Feature: SMART-API: SMART-ranking
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised category pages

#
# SMART-API SMART-ranking
#
Scenario: Category page with SMART-ranking is tracked using SMART-API
    Given I am using SMART-API to access livedemoshop
    When I supply SMART-ranking setup info
    And I track a category page
    Then I should get an OK status back
    And I should get at least 1 items of SMART-ranking content 

Scenario: SMART-ranking clicks can be tracked using SMART-API
    Given I am using SMART-API to access livedemoshop
    When I supply SMART-ranking setup info
    And I track a category page
    When I track a click for the first SMART-ranking item
    Then I should get an OK status back
    When I track a click for SMART-ranking item number 2
    Then I should get an OK status back

