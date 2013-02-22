#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@virginwines

Feature: Virgin wines Integration

#
# Tracking tests
#


Scenario: Virgin wines home page is tracked correctly
  Given I am on the virginwines home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show at least 3 SMART-recs

Scenario: Virgin wines category page is tracked correctly
  Given I am on the virginwines category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Virgin wines product page is tracked correctly
  Given I am on the virginwines product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 2 SMART-recs

Scenario: Virgin wines basket page is tracked correctly
  Given I am on the virginwines basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show no SMART-recs


Scenario: Virgin wines checkout page is tracked correctly
  Given I am on the virginwines home page
  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  And I go to the product page
  And I pause for 10 seconds
  
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Virgin wines search results page is tracked correctly
    Given I am on the virginwines homepage
    And I clear my browser cookies
    
    When I search for "red wine"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: Virgin wines zero search recommendations are shown
    Given I am on the virginwines homepage
    And I clear my browser cookies
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

