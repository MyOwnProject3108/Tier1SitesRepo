#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
@wallis
Feature: Wallis Integration

#
# Tracking tests
#
                                                                                                
Scenario: Wallis home page is tracked correctly
  Given I am on the wallis home page
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Wallis category page is tracked correctly
    Given I am on the wallis category page
    Then it should be tracked as a Category page
    And the debug info should show no SMART-recs

Scenario: Wallis product page is tracked correctly
    Given I am on the wallis product page
    Then it should be tracked as a product page
    And the debug info should show at least 3 SMART-recs
    
Scenario: Wallis basket page is tracked correctly
    Given I am on the wallis basket page
    Then it should be tracked as a basket page
    And the debug info should show at least 5 SMART-recs    
       
Scenario: Wallis checkout page is tracked correctly
  Given I am on the wallis home page
  When I click login
  And I login as "vinod.sathapathi@peerius.com" using password "Pa55word"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs
  
Scenario: Wallis search results page is tracked correctly
    Given I am on the wallis homepage
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#     
@zerosearch
Scenario: Wallis zero search recommendations are shown
    Given I am on the wallis homepage
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

