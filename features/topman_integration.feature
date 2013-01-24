Feature: Topman Integration

@topman
Scenario: Topman home page is tracked correctly
	Given I am on the topman home page
	Then it should be tracked as a Home page
	
@topman
Scenario: Topman category page is tracked correctly
	Given I am on the topman category page
	Then it should be tracked as a Category page
	
@topman
Scenario: Topman product page is tracked correctly
	Given I am on the topman product page
	Then it should be tracked as a Product page
	
@topman
Scenario: Topman basket page is tracked correctly
	Given I am on the topman basket page
	Then it should be tracked as a Basket page
	
@topman
Scenario: Topman checkout page is tracked correctly
	Given I am on the topman home page
	When I click login
	And I fill in my login details
	And I go to the product page
	And I add the current product to the basket
	And I go to the basket page
	And I click checkout
	Then it should be tracked as a Checkout page
	
	
@topman 
Scenario: Zero search recommendations are shown
    Given I am on the topman homepage
    When I search for "dvd"
    Then I should end up on the search results page
    And I should see at least 1 SMART-recs
	
@topman 
Scenario: Topman search results page is tracked correctly
    Given I am on the topman homepage
    When I search for "shirt"
    Then I should end up on the search results page
    
	
 
       