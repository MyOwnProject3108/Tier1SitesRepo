Feature: Wallis Integration

@wallis
Scenario: Wallis home page is tracked correctly
	Given I am on the wallis home page
	Then it should be tracked as a Home page

@wallis
    Scenario: Wallis category page is tracked correctly
    Given I am on the wallis category page
    Then it should be tracked as a Category page

@wallis
Scenario: Wallis product page is tracked correctly
    Given I am on the wallis product page
    Then it should be tracked as a product page
    
       