Feature: Topshop Integration

@topshop
Scenario: Topshop home page is tracked correctly
	Given I am on the topshop home page
	Then it should be tracked as a Home page
	
@topshop
Scenario:Topshop category page is tracked correctly
	Given I am on the topshop category page
	Then it should be tracked as a Category page
	
@topshop
Scenario:Topshop product page is tracked correctly
	Given I am on the topshop product page
	Then it should be tracked as a Product page
	
@topshop
Scenario:Topshop basket page is tracked correctly
	Given I am on the topshop basket page
	Then it should be tracked as a Basket page	
	
@topshop
Scenario: Topshop checkout page is tracked correctly
	Given I am on the topshop home page
	When I click login
	And I fill in my login details
	And I go to the product page
	And I add the current product to the basket
	And I go to the basket page
	And I click checkout
	Then it should be tracked as a Checkout page
	
 
       