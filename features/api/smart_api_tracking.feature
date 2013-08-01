@smartapi
@livedemoshop
Feature: SMART-API: Non-site specific tracking tests
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius

#
# Invalid API call tests
# 
@smartapi      
Scenario: Search results page is *not* tracked using SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    When I track a search results page
    Then I should get a fail status back
        
@smartapi  
Scenario: Order page is *not* tracked using SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    When I track an order page
    Then I should get a fail status back
        
#
# Invalid key tests
#
@smartapi   
Scenario Outline: Invalid key is used with SMART-API
    Given I am using SMART-API <version> to access livedemoshop
    And I am using client token xxbadtokenxx
    When I track a home page
    Then I should get a fail status back
    Examples:    
    | version |
    | v1      |
    | v1_1    |
	| v1_2    |

