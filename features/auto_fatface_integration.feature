#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@fatface

Feature: fatface Integration

#
# Tracking tests
#


Scenario: fatface home page is tracked correctly
  Given I am on the fatface home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: fatface category page is tracked correctly
  Given I am on the fatface category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: fatface product page is tracked correctly
  Given I am on the fatface product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: fatface basket page is tracked correctly
  Given I am on the fatface basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 6 SMART-recs


Scenario: fatface checkout page is tracked correctly
  Given I am on the fatface home page
  And I clear my browser cookies
  
  When I click login
  And I login as "anagha.joshi@peerius.com" using password "Pa55word"
  And I go to the product page
  And I click on the li with class "8"
  And I click on the button with id "addproduct"
  And I pause for 3 seconds
  
  And I add the current product to the basket
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: fatface search results page is tracked correctly
    Given I am on the fatface homepage
    And I clear my browser cookies
    
    When I search for "dress"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: fatface zero search recommendations are shown
    Given I am on the fatface homepage
    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs
