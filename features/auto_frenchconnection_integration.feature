#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#
@frenchconnection
Feature: frenchconnection Integration

#
# Tracking tests
#


Scenario: frenchconnection home page is tracked correctly
  Given I am on the frenchconnection home page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a home page
  And the debug info should show no SMART-recs

Scenario: frenchconnection category page is tracked correctly
  Given I am on the frenchconnection category page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a category page
  And the debug info should show no SMART-recs

Scenario: frenchconnection product page is tracked correctly
  Given I am on the frenchconnection product page
#  And I clear my browser cookies
  
  And I click on the span with class "cust_checkbox_off checkbox"
  
  Then it should be tracked as a product page
  And the debug info should show at least 3 SMART-recs

Scenario: frenchconnection basket page is tracked correctly
  Given I am on the frenchconnection basket page
#  And I clear my browser cookies
  
  
  Then it should be tracked as a basket page
  And the debug info should show at least 4 SMART-recs


Scenario: frenchconnection checkout page is tracked correctly
  Given I am on the frenchconnection home page
#  And I clear my browser cookies
  
  When I click login
  And I login as "webtest@mailinator.com" using password "webtest"
  
  And I go to the product page
  And I click on the span with class "cust_checkbox_off checkbox"
  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  And I click on the link with id "promotionCodeProceed"
  And I click on the link with id "shippingMethodProceed"
  And I select "Mastercard" on the select_list with id "ctl00_ctl00_globalmaincontent_maincontent_payment_ddlCreditCardType"
  And I enter "5555555555554444" on the text_field with id "cardNumber"
  And I enter "Eerius" on the text_field with id "cardHolderName"
  And I select "03" on the select_list with id "ctl00_ctl00_globalmaincontent_maincontent_payment_ddlExpiryMonth"
  And I select "2015" on the select_list with id "ctl00_ctl00_globalmaincontent_maincontent_payment_ddlExpiryYear"
  And I enter "123" on the text_field with id "securityCode"
  And I click on the checkbox with id "chkTermsRead"
  And I click on the link with id "paymentProceed"
  
  Then it should be tracked as a Checkout page
  And the debug info should show no SMART-recs

Scenario: frenchconnection search results page is tracked correctly
    Given I am on the frenchconnection homepage
#    And I clear my browser cookies
    
    When I search for "dress"
    Then it should be tracked as a search results page
    And the debug info should show no SMART-recs

#
# Zero search tests
#
@zerosearch
Scenario: frenchconnection zero search recommendations are shown
    Given I am on the frenchconnection homepage
#    And I clear my browser cookies
    
    When I search for "abcd"
    Then it should be tracked as a search results page
    And the debug info should show at least 1 SMART-recs

