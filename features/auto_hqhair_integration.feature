#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@hqhair

Feature: hqhair Integration

#
# Tracking tests
#


Scenario: hqhair home page is tracked correctly
  Given I am on the hqhair home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show at least 8 SMART-recs

Scenario: hqhair category page is tracked correctly
  Given I am on the hqhair category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: hqhair product page is tracked correctly
  Given I am on the hqhair product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 8 SMART-recs

Scenario: hqhair basket page is tracked correctly
  Given I am on the hqhair basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 4 SMART-recs


Scenario: hqhair checkout page is tracked correctly
  Given I am on the hqhair home page
  And I clear my browser cookies
  
  When I click login
  And I login as "suer178@gmail.com" using password "Pa55word"
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: hqhair search results page is tracked correctly
    Given I am on the hqhair homepage
    And I clear my browser cookies
    
    When I search for "cream"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


