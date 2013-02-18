#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
@topman
Feature: Topman Integration

#
# Tracking tests
#
                                                                                                
Scenario: Topman home page is tracked correctly
  Given I am on the topman home page
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Topman category page is tracked correctly
    Given I am on the topman category page
    Then it should be tracked as a Category page
    And the debug info should show no SMART-recs

Scenario: Topman product page is tracked correctly
    Given I am on the topman product page
    Then it should be tracked as a product page
    And the debug info should show at least 3 SMART-recs
    
Scenario: Topman basket page is tracked correctly
    Given I am on the topman basket page
    Then it should be tracked as a basket page
    And the debug info should show at least 5 SMART-recs    
       
Scenario: Topman checkout page is tracked correctly
  Given I am on the topman home page
  When I click login
  And I login as "vinod.sathapathi@peerius.com" using password "Pa55word"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs
  
Scenario: Topman search results page is tracked correctly
    Given I am on the topman homepage
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#     
@zerosearch
Scenario: Topman zero search recommendations are shown
    Given I am on the topman homepage
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

