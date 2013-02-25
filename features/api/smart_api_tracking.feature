@smartapi
Feature: SMART-API: tracking
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius
  
    @smartapi   
    Scenario Outline: Homepage is tracked using SMART-API
        Given I am using SMART-API <version> to access livedemoshop
        When I track a home page
        Then I should get an OK status back
        Examples:
        | version |
        | v1      |
        | v1_1    |
      

    @smartapi   
    Scenario Outline: Product page is tracked using SMART-API
        Given I am using SMART-API <version> to access livedemoshop
        When I track a product page
        Then I should get an OK status back
        Examples:    
        | version |
        | v1      |
        | v1_1    |
   
    @smartapi   
    Scenario Outline: Category page is tracked using SMART-API v1
        Given I am using SMART-API <version> to access livedemoshop
        When I track a category page
        Then I should get an OK status back
        Examples:   
        | version |
        | v1      |
        | v1_1    |
        
    @smartapi  
    Scenario Outline: Basket page is tracked using SMART-API v1
        Given I am using SMART-API <version> to access livedemoshop
        When I track a basket page
        Then I should get an OK status back
        Examples:   
        | version |
        | v1      |
        | v1_1    |
    
    @smartapi  
    Scenario Outline: Checkout page is tracked using SMART-API v1
        Given I am using SMART-API <version> to access livedemoshop
        When I track a checkout page
        Then I should get an OK status back
        Examples:   
        | version |
        | v1      |
        | v1_1    |
    
    @smartapi  
    Scenario: Order page is tracked using SMART-API v1.1
        Given I am using SMART-API to access livedemoshop
        When I track an order page
        Then I should get an OK status back

    @smartapi @internal  
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

