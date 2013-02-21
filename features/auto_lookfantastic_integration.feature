#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@lookfantastic

Feature: Look Fantastic Integration

#
# Tracking tests
#


Scenario: Look Fantastic home page is tracked correctly
  Given I am on the lookfantastic home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show at least 5 SMART-recs

Scenario: Look Fantastic category page is tracked correctly
  Given I am on the lookfantastic category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Look Fantastic product page is tracked correctly
  Given I am on the lookfantastic product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: Look Fantastic basket page is tracked correctly
  Given I am on the lookfantastic basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 1 SMART-recs


Scenario: Look Fantastic checkout page is tracked correctly
  Given I am on the lookfantastic home page
  And I clear my browser cookies
  
  When I click login
  And I login as "testmail@123.com" using password "pass1234"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Look Fantastic search results page is tracked correctly
    Given I am on the lookfantastic homepage
    And I clear my browser cookies
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


