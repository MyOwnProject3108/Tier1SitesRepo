#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@topshopeu
Feature: Topshop EU Integration

#
# Tracking tests
#


Scenario: Topshop EU home page is tracked correctly
  Given I am on the topshopeu home page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Topshop EU category page is tracked correctly
  Given I am on the topshopeu category page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Topshop EU product page is tracked correctly
  Given I am on the topshopeu product page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: Topshop EU basket page is tracked correctly
  Given I am on the topshopeu basket page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a basket page
  And the debug info should show at least 7 SMART-recs


Scenario: Topshop EU checkout page is tracked correctly
  Given I am on the topshopeu home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "anagha.joshi@peerius.com" using password "Pa55word"
  
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: Topshop EU search results page is tracked correctly
    Given I am on the topshopeu homepage
#    And I clear my browser cookies
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: Topshop EU zero search recommendations are shown
    Given I am on the topshopeu homepage
#    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 7 SMART-recs

