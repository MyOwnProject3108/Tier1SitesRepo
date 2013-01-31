Feature: CT Shirts Integration

@ctshirts
Scenario: CT Shirts home page is tracked as other with no SPR
	Given I am on the ctshirts home page
	Then it should be tracked as an other page

@ctshirts
Scenario: CT Shirts home page is tracked as home page with SPR
	Given I am on the ctshirts home page
	And I use the "peerius" ctshirts promotion
	Then it should be tracked as a Home page

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
Scenario: CT Shirts zero search recommendations are shown
    Given I am on the ctshirts homepage
    When I search for "dvd"
    Then I should end up on the search results page
    And I should see at least 1 SMART-recs
	
@ctshirts 
Scenario: CT Shirts search results page is tracked correctly
    Given I am on the ctshirts homepage
    When I search for "shirt"
    Then I should end up on the search results page
			
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
