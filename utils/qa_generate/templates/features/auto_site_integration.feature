#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#
Feature: <%= site["pretty_name"] %> Integration

<% if site["needs_SPR"] %>
@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> home page is tracked correctly using SPR
	Given I am on the <%= site["site_name"] %> home page
	And I use the SPR key
	Then it should be tracked as a home page

Scenario: <%= site["pretty_name"] %> home page is tracked correctly without SPR
	Given I clear my browser cookies
  And I am on the <%= site["site_name"] %> home page
	Then it should be tracked as an other page
<% else %>
@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> home page is tracked correctly
	Given I am on the <%= site["site_name"] %> home page
	Then it should be tracked as a home page
<% end %>

@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> category page is tracked correctly
    Given I am on the <%= site["site_name"] %> category page
    Then it should be tracked as a Category page

@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> product page is tracked correctly
    Given I am on the <%= site["site_name"] %> product page
    Then it should be tracked as a product page
    
@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> basket page is tracked correctly
    Given I am on the <%= site["site_name"] %> basket page
    Then it should be tracked as a basket page    
        
@<%= site["site_name"] %>
Scenario: <%= site["pretty_name"] %> checkout page is tracked correctly
	Given I am on the <%= site["site_name"] %> home page
	When I click login
	And I fill in my login details
	And I go to the product page
	And I add the current product to the basket
	And I go to the basket page
	And I click checkout
	Then it should be tracked as a Checkout page
  
@<%= site["site_name"] %> 
Scenario: <%= site["pretty_name"] %> search results page is tracked correctly
    Given I am on the <%= site["site_name"] %> homepage
    When I search for "shirt"
    Then it should be tracked as a search results page

<% if site["has_recs"] %>
#
# SMART-recs
# 		
@<%= site["site_name"] %> 
Scenario: <%= site["pretty_name"] %> zero search recommendations are shown
    Given I am on the <%= site["site_name"] %> homepage
    When I search for "dvd"
    Then it should be tracked as a search results page
    Then the debug info should show at least 1 SMART-recs
				

@<%= site["site_name"] %>
Scenario: SMART-recs appear on <%= site["pretty_name"] %> product page
    Given I am on the <%= site["site_name"] %> product page
    Then the debug info should show at least 1 SMART-recs
<% end %>

<% if site["has_content"] %>
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
    Then it should be tracked as a category page         
<% end %>