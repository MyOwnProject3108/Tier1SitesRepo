Feature: SMART-API tracking
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius
  
@smartapi   
Scenario: Homepage is tracked using SMART-API v1.1
  Given I am using SMART-API to access livedemoshop
  When I track a home page
  Then I should get an OK status back
  
@smartapi   
Scenario: Homepage is tracked using SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    When I track a home page
    Then I should get an OK status back

@wip
@smartapi   
Scenario: Product page is tracked using SMART-API v1.1
  Given I am using SMART-API to access livedemoshop
  When I track a product page
  Then I should get an OK status back

@wip  
@smartapi   
Scenario: Product page is tracked using SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    When I track a product page
    Then I should get an OK status back

@smartapi   
Scenario: Search results page is tracked using SMART-API v1.1 
    Given I am using SMART-API to access livedemoshop
    When I track a search results page
    Then I should get an OK status back

#
# Invalid API call tests
# 
@smartapi      
Scenario: Search results page is *not* tracked using SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    When I track a search results page
    Then I should get a fail status back
    
#
# Invalid key tests
#
@smartapi   
Scenario: Invalid key is used with SMART-API v1.1
    Given I am using SMART-API to access livedemoshop
    And I am using client token xxbadtokenxx
    When I track a home page
    Then I should get a fail status back

@smartapi   
Scenario: Invalid key is used with SMART-API v1
    Given I am using SMART-API v1 to access livedemoshop
    And I am using client token xxbadtokenxx
    When I track a home page
    Then I should get a fail status back
