#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.4
#
Feature: CT Shirts Integration

@ctshirts
Scenario: CT Shirts home page is tracked correctly using SPR
	Given I am on the ctshirts home page
	And I use the SPR key
	Then it should be tracked as a home page

Scenario: CT Shirts home page is tracked correctly without SPR
	Given I clear my browser cookies
  And I am on the ctshirts home page
	Then it should be tracked as an other page

@ctshirts
Scenario: CT Shirts category page is tracked correctly
    Given I am on the ctshirts category page
    Then it should be tracked as a Category page

@ctshirts
Scenario: CT Shirts product page is tracked correctly
    Given I am on the ctshirts product page
    Then it should be tracked as a product page
    
@ctshirts
Scenario: CT Shirts basket page is tracked correctly
    Given I am on the ctshirts basket page
    Then it should be tracked as a basket page    
        
@ctshirts
Scenario: CT Shirts checkout page is tracked correctly
	Given I am on the ctshirts home page
	When I click login
	And I fill in my login details
	And I go to the product page
	And I add the current product to the basket
	And I go to the basket page
	And I click checkout
	Then it should be tracked as a Checkout page
  
@ctshirts 
Scenario: CT Shirts search results page is tracked correctly
    Given I am on the ctshirts homepage
    When I search for "shirt"
    Then I should end up on the search results page

#
# SMART-recs
# 		
@ctshirts 
Scenario: CT Shirts zero search recommendations are shown
    Given I am on the ctshirts homepage
    When I search for "dvd"
    Then I should end up on the search results page
    And I should see at least 1 SMART-recs
				

@ctshirts
Scenario: SMART-recs appear on CT Shirts product page
    Given I am on the ctshirts product page
    Then I should see SMART-recs
    And the debug info should show at least 1 SMART-recs

@ctshirts
Scenario: SMART-rec links work on CT Shirts product pages
    Given I am on the ctshirts product page
    And I click the first SMART-rec image link 
    Then I should end up on a product page
    And it should be tracked as a product page

#
# SMART-content
#    
@ctshirts
Scenario: Content is displayed when supported promotion is used
    Given I am on the ctshirts homepage
    When I use the "peerius" ctshirts promotion
    Then I should see at least 6 items of SMART-content

@ctshirts
Scenario: Content is not displayed when protected promotion is used
    Given I am on the ctshirts homepage
    When I use the "myvc" ctshirts promotion
    Then I should see no SMART-content

@ctshirts
Scenario: SMART-content links work
    Given I am on the ctshirts homepage
    When I use the "peerius" ctshirts promotion
    And I click the first SMART-content creative image
    Then I should end up on a category page
    And it should be tracked as a category page          
