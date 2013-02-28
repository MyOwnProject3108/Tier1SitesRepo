#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@topshopus
Feature: Topshop USA Integration

#
# Tracking tests
#


Scenario: Topshop USA home page is tracked correctly
  Given I am on the topshopus home page
#  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: Topshop USA category page is tracked correctly
  Given I am on the topshopus category page
#  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: Topshop USA product page is tracked correctly
  Given I am on the topshopus product page
#  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: Topshop USA basket page is tracked correctly
  Given I am on the topshopus basket page
#  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show at least 4 SMART-recs


Scenario: Topshop USA checkout page is tracked correctly
  Given I am on the topshopus home page
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

Scenario: Topshop USA search results page is tracked correctly
    Given I am on the topshopus homepage
#    And I clear my browser cookies
    
    When I search for "shirts"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: Topshop USA zero search recommendations are shown
    Given I am on the topshopus homepage
#    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

