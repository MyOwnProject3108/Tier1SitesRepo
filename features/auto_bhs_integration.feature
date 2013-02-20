#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@bhs

Feature: bhs Integration

#
# Tracking tests
#


Scenario: bhs home page is tracked correctly
  Given I am on the bhs home page
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: bhs category page is tracked correctly
  Given I am on the bhs category page
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: bhs product page is tracked correctly
  Given I am on the bhs product page
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: bhs basket page is tracked correctly
  Given I am on the bhs basket page
  
  Then it should be tracked as a basket page
  And the debug info should show no SMART-recs


Scenario: bhs checkout page is tracked correctly
  Given I am on the bhs home page
  
  When I click login
  And I login as "vinod.sathapathi@peerius.com" using password "Pa55word"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: bhs search results page is tracked correctly
    Given I am on the bhs homepage
    
    When I search for "dress"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

