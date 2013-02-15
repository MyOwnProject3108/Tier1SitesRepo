Feature: Alexblake Integration

@alexblake
Scenario: Alexblake home page is tracked correctly
	Given I am on the alexblake home page
	Then it should be tracked as a Home page

@alexblake
    Scenario: Alexblake category page is tracked correctly
    Given I am on the alexblake category page
    Then it should be tracked as a Category page

@alexblake
Scenario: Alexblake product page is tracked correctly
    Given I am on the alexblake product page
    Then it should be tracked as a product page
    
       