@Smartjson 
@livedemoshop
Feature: SMART-JSON: Non-site specific tracking tests
  In order to get customer behaviour insights
  As a website owner
  I want to use an JSON to track user behaviour using Peerius

#
# Invalid JSON call tests
# 
@smartjson      
Scenario: Search results page is *not* tracked using SMART-JSON v1
    Given I am utilizing SMART-JSON to access livedemoshop
    When I track a search results page
    Then I should get a fail status back
        
@smartjson 
Scenario: Order page is *not* tracked using SMART-JSON v1
    Given I am utilizing SMART-JSON to access livedemoshop
    When I track an order page
    Then I should get a fail status back
        
#
# Invalid key tests
#
@smartjson  
Scenario Outline: Invalid key is used with SMART-JSON
    Given I am utilizing SMART-JSON to access livedemoshop
    And I am utilizing client token xxbadtokenxx
    When I track a home page
    Then I should get a fail status back
    Examples:    
    | version |
    | v1      |
    | v1_1    |

