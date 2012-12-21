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
Scenario: CT Shirts 
    Given I am on the ctshirts product page
    Then it should be tracked as a product page    
        
@ctshirts
Scenario: SMART-recs appear on CT Shirts product page
    Given I am on the ctshirts product page
    Then I should see SMART-recs

@ctshirts
Scenario: SMART-rec links work on CT Shirts product pages
    Given I am on the ctshirts product page
    And I click the first SMART-rec image link 
    Then I should end up on a product page
    And it should be tracked as a product page          