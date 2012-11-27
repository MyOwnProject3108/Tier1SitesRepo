@smartapi
Feature: SMART-API performance
  In order to get good response times for my app
  As an app developer
  I want to get quick responses from the API
    
    @smartapi
    Scenario Outline: Non-SMART page is tracked using SMART-API
        Given I am using SMART-API <version> to access livedemoshop
        When I track a checkout page
        Then I should get an OK status back
        And I should get no SMART-product content in the response
        And I should get a response in less than 150ms 
        Examples:
        | version |
        | v1      |
        | v1_1    |
    
    @smartapi     
    Scenario Outline: SMART page is tracked using SMART-API
        Given I am using SMART-API <version> to access livedemoshop
        When I track a home page
        Then I should get an OK status back
        And I should get at least 1 item of SMART-product content in the response
        And I should get a response in less than 300ms 
        Examples:
        | version |
        | v1      |
        | v1_1    | 