#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@bhs

Feature: bhs Integration

#
# Tracking tests
#


Scenario: bhs home page is tracked correctly
  Given I am on the bhs home page
  And I clear my browser cookies
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: bhs category page is tracked correctly
  Given I am on the bhs category page
  And I clear my browser cookies
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: bhs product page is tracked correctly
  Given I am on the bhs product page
  And I clear my browser cookies
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: bhs basket page is tracked correctly
  Given I am on the bhs basket page
  And I clear my browser cookies
  
  Then it should be tracked as a basket page
  And the debug info should show no SMART-recs


Scenario: bhs checkout page is tracked correctly
  Given I am on the bhs home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "vinod.sathapathi@peerius.com" using password "Pa55word"
  And I go to the product page
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  And I select "Mr" on the select_list with id "address_title"
  And I enter "P" on the text_field with id "address_first_name"
  And I enter "Eerius" on the text_field with id "address_surname"
  And I enter "02033974940" on the text_field with id "address_main_telephone"
  And I enter "Units 207-211" on the text_field with class "text address_line_1"
  And I enter "30 Great Guilford St" on the text_field with class "text address_line_2"
  And I enter "London" on the text_field with class "text address_town"
  And I enter "SE1 0HS" on the text_field with class "text address_postcode_manual"
  And I click on the link with class "btn_proceed_to_payment submit_button chk_button_primary"
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: bhs search results page is tracked correctly
    Given I am on the bhs homepage
    And I clear my browser cookies
    
    When I search for "dress"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs


