#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@lovehoney
Feature: Lovehoney Integration

#
# Tracking tests
#


Scenario: Lovehoney home page is tracked correctly
  Given I am on the lovehoney home page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Lovehoney category page is tracked correctly
  Given I am on the lovehoney category page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Lovehoney product page is tracked correctly
  Given I am on the lovehoney product page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a product page
  And the debug info should show at least 1 SMART-recs

Scenario: Lovehoney basket page is tracked correctly
  Given I am on the lovehoney basket page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a basket page
  And the debug info should show no SMART-recs


Scenario: Lovehoney checkout page is tracked correctly
  Given I am on the lovehoney home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  And I click on the button with class "button std-arrow"
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Lovehoney search results page is tracked correctly
    Given I am on the lovehoney homepage
#    And I clear my browser cookies
    
    When I search for "lube"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


