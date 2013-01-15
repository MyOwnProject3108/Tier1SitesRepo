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
	And I add to the shopping bag
	And I go to view your bag
	And I go to checkout
	Then it should be tracked as a Checkout page
	

    
       