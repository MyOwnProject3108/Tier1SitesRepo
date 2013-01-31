#
# This file is auto-generated. Please do not modify!
#

Feature: <%= site.pretty_name %> Integration

@<%= site.site_name %>
Scenario: <%= site.pretty_name %> home page is tracked as other with no SPR
	Given I am on the <%= site.site_name %> home page
	Then it should be tracked as an other page

@<%= site.site_name %>
Scenario: <%= site.pretty_name %> home page is tracked as home page with SPR
	Given I am on the <%= site.site_name %> home page
	And I use the "peerius" <%= site.site_name %> promotion
	Then it should be tracked as a Home page

@<%= site.site_name %>
    Scenario: <%= site.pretty_name %> category page is tracked correctly
    Given I am on the <%= site.site_name %> category page
    Then it should be tracked as a Category page

@<%= site.site_name %>
Scenario: <%= site.pretty_name %> product page is tracked correctly
    Given I am on the <%= site.site_name %> product page
    Then it should be tracked as a product page
    
@<%= site.site_name %>
Scenario: <%= site.pretty_name %> basket page is tracked correctly
    Given I am on the <%= site.site_name %> basket page
    Then it should be tracked as a basket page    
        
@<%= site.site_name %>
Scenario: <%= site.pretty_name %> checkout page is tracked correctly
	Given I am on the <%= site.site_name %> home page
	When I click login
	And I fill in my login details
	And I go to the product page
	And I add the current product to the basket
	And I go to the basket page
	And I click checkout
	Then it should be tracked as a Checkout page
		
@<%= site.site_name %> 
Scenario: <%= site.pretty_name %> zero search recommendations are shown
    Given I am on the <%= site.site_name %> homepage
    When I search for "dvd"
    Then I should end up on the search results page
    And I should see at least 1 SMART-recs
	
@<%= site.site_name %> 
Scenario: <%= site.pretty_name %> search results page is tracked correctly
    Given I am on the <%= site.site_name %> homepage
    When I search for "shirt"
    Then I should end up on the search results page
			
@<%= site.site_name %>
Scenario: SMART-recs appear on <%= site.pretty_name %> product page
    Given I am on the <%= site.site_name %> product page
    Then I should see SMART-recs
    And the debug info should show at least 1 SMART-recs

@<%= site.site_name %>
Scenario: SMART-rec links work on <%= site.pretty_name %> product pages
    Given I am on the <%= site.site_name %> product page
    And I click the first SMART-rec image link 
    Then I should end up on a product page
    And it should be tracked as a product page          
