#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@topmanus

Feature: Topman USA Integration

#
# Tracking tests
#


Scenario: Topman USA home page is tracked correctly
  Given I am on the topmanus home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Topman USA category page is tracked correctly
  Given I am on the topmanus category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Topman USA product page is tracked correctly
  Given I am on the topmanus product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: Topman USA basket page is tracked correctly
  Given I am on the topmanus basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 5 SMART-recs


Scenario: Topman USA checkout page is tracked correctly
  Given I am on the topmanus home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest1234"
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  And I click on the link with class "btn_proceed_to_payment submit_button chk_button_primary"
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Topman USA search results page is tracked correctly
    Given I am on the topmanus homepage
    And I clear my browser cookies
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: Topman USA zero search recommendations are shown
    Given I am on the topmanus homepage
    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

