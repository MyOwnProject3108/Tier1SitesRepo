#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@thehut
Feature: The Hut Integration

#
# Tracking tests
#


Scenario: The Hut home page is tracked correctly
  Given I am on the thehut home page
#  And I clear my browser cookies
  
  And I use the SPR key
  
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: The Hut category page is tracked correctly
  Given I am on the thehut category page
#  And I clear my browser cookies
  
  And I use the SPR key
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: The Hut product page is tracked correctly
  Given I am on the thehut product page
#  And I clear my browser cookies
  
  And I use the SPR key
  
  
  Then it should be tracked as a product page
  And the debug info should show at least 4 SMART-recs

Scenario: The Hut basket page is tracked correctly
  Given I am on the thehut basket page
#  And I clear my browser cookies
  
  And I use the SPR key
  
  
  Then it should be tracked as a basket page
  And the debug info should show at least 4 SMART-recs


Scenario: The Hut checkout page is tracked correctly
  Given I am on the thehut home page
#  And I clear my browser cookies
  
  And I use the SPR key
  
  When I click login
  And I login as "user177@gmail.com" using password "Pa55word"
  
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: The Hut search results page is tracked correctly
    Given I am on the thehut homepage
#    And I clear my browser cookies
    
    And I use the SPR key
    
    When I search for "shirt"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


