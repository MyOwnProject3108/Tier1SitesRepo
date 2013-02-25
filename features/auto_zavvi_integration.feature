#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@zavvi

Feature: Zavvi Integration

#
# Tracking tests
#


Scenario: Zavvi home page is tracked correctly
  Given I am on the zavvi home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show at least 3 SMART-recs

Scenario: Zavvi category page is tracked correctly
  Given I am on the zavvi category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Zavvi product page is tracked correctly
  Given I am on the zavvi product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show no SMART-recs

Scenario: Zavvi basket page is tracked correctly
  Given I am on the zavvi basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 2 SMART-recs


Scenario: Zavvi checkout page is tracked correctly
  Given I am on the zavvi home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "testmail@123.com" using password "pass1234"
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Zavvi search results page is tracked correctly
    Given I am on the zavvi homepage
    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


