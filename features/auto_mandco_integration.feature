#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@mandco

Feature: Mandco Integration

#
# Tracking tests
#


Scenario: Mandco home page is tracked correctly
  Given I am on the mandco home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Mandco category page is tracked correctly
  Given I am on the mandco category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Mandco product page is tracked correctly
  Given I am on the mandco product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: Mandco basket page is tracked correctly
  Given I am on the mandco basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show no SMART-recs


Scenario: Mandco checkout page is tracked correctly
  Given I am on the mandco home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  And I go to the product page
  And I click on the div with text "10"
  And I click on the button with id "addproduct"
  And I pause for 3 seconds
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Mandco search results page is tracked correctly
    Given I am on the mandco homepage
    And I clear my browser cookies
    
    When I search for "dress"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


