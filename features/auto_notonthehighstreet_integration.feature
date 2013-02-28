#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@notonthehighstreet
Feature: NotontheHighStreet Integration

#
# Tracking tests
#


Scenario: NotontheHighStreet home page is tracked correctly
  Given I am on the notonthehighstreet home page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a home page
  And the debug info should show at least 4 SMART-recs

Scenario: NotontheHighStreet category page is tracked correctly
  Given I am on the notonthehighstreet category page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: NotontheHighStreet product page is tracked correctly
  Given I am on the notonthehighstreet product page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: NotontheHighStreet basket page is tracked correctly
  Given I am on the notonthehighstreet basket page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a basket page
  And the debug info should show at least 1 SMART-recs


Scenario: NotontheHighStreet checkout page is tracked correctly
  Given I am on the notonthehighstreet home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest1234"
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: NotontheHighStreet search results page is tracked correctly
    Given I am on the notonthehighstreet homepage
#    And I clear my browser cookies
    
    When I search for "map"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


