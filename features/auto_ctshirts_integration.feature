#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@ctshirts

Feature: CT Shirts Integration

#
# Tracking tests
#


Scenario: CT Shirts home page is tracked correctly
  Given I am on the ctshirts home page
  
  And I use the SPR key
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: CT Shirts category page is tracked correctly
  Given I am on the ctshirts category page
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: CT Shirts product page is tracked correctly
  Given I am on the ctshirts product page
  
  Then it should be tracked as a product page
  And the debug info should show at least 7 SMART-recs

Scenario: CT Shirts basket page is tracked correctly
  Given I am on the ctshirts basket page
  
  Then it should be tracked as a basket page
  And the debug info should show at least 1 SMART-recs


Scenario: CT Shirts checkout page is tracked correctly
  Given I am on the ctshirts home page
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  And I go to the product page
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  And I click on the button with id "ctl00_contentBody_submit"

  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: CT Shirts search results page is tracked correctly
    Given I am on the ctshirts homepage
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: CT Shirts zero search recommendations are shown
    Given I am on the ctshirts homepage
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

