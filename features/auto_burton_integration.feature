#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@burton
Feature: burton Integration

#
# Tracking tests
#


Scenario: burton home page is tracked correctly
  Given I am on the burton home page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: burton category page is tracked correctly
  Given I am on the burton category page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: burton product page is tracked correctly
  Given I am on the burton product page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a product page
  And the debug info should show at least 4 SMART-recs

Scenario: burton basket page is tracked correctly
  Given I am on the burton basket page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a basket page
  And the debug info should show at least 7 SMART-recs


Scenario: burton checkout page is tracked correctly
  Given I am on the burton home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "faiyyaz.sultana@peerius.com" using password "Pa55word"
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

Scenario: burton search results page is tracked correctly
    Given I am on the burton homepage
#    And I clear my browser cookies
    
    When I search for "shirt"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: burton zero search recommendations are shown
    Given I am on the burton homepage
#    And I clear my browser cookies
    
    When I search for "dvd"
    Then it should be tracked as a search results page
    And the debug info should show at least 8 SMART-recs

