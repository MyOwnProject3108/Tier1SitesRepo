#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@cottontraders

Feature: Cotton Traders Integration

#
# Tracking tests
#


Scenario: Cotton Traders home page is tracked correctly
  Given I am on the cottontraders home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show at least 1 SMART-recs

Scenario: Cotton Traders category page is tracked correctly
  Given I am on the cottontraders category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show at least 1 SMART-recs

Scenario: Cotton Traders product page is tracked correctly
  Given I am on the cottontraders product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 1 SMART-recs

Scenario: Cotton Traders basket page is tracked correctly
  Given I am on the cottontraders basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 1 SMART-recs


Scenario: Cotton Traders checkout page is tracked correctly
  Given I am on the cottontraders home page
  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Cotton Traders search results page is tracked correctly
    Given I am on the cottontraders homepage
    And I clear my browser cookies
    
    When I search for "shirt"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: Cotton Traders zero search recommendations are shown
    Given I am on the cottontraders homepage
    And I clear my browser cookies
    
    When I search for "asdf"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

