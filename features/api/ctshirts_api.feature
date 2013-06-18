@smartapi
@ctshirts
Feature: SMART-API CT Shirts specific tests

Background:
    Given I am using the ctshirts API test config
    And I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t3
    And I am using production client token 677ab692r2t3


Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works with single purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
    When I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response
    And the first SMART-content creative name should contain <category_name>
    Examples:
    | product    | category_name |
    | "SN061WHT" | "classic"     |
    | "FT097RYL" | "slim"        |
    | "RD034SKY" | "extra slim"  |
    | "EPA07GRY" | "Suits"       |
    | "LE083BLU" | "cufflinks"   |
    | "TH099RYL" | "Ties"        |
    | "MP027TAN" | "Shoes"       |

Scenario: SMART-content merchandising rule "purchasedByCategory" works with multiple purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
    When I track a click for the first SMART-content creative
    And I order a "SN061WHT" using the SMART-API # -- Classic shirt
    And I order a "FT097RYL" using the SMART-API # -- Slim shirt
    And I order a "EPA07GRY" using the SMART-API # -- Suit
    And I order a "LE083BLU" using the SMART-API # -- Cufflinks
    And I order a "TH099RYL" using the SMART-API # -- Ties
    And I order a "MP027TAN" using the SMART-API # -- Shoes
    And I track the home page
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response
    And one of the SMART-content creative names should contain "classic"
    And one of the SMART-content creative names should contain "slim"
    And one of the SMART-content creative names should contain "Suit"
    And one of the SMART-content creative names should contain "cufflinks"
    And one of the SMART-content creative names should contain "Ties"
    And one of the SMART-content creative names should contain "Shoes"
    
Scenario: SMART-content merchandising rule "purchasedByCategory" works across sessions
    Given I am using username "Web Test" and email "webtest@mailinator.com"
    When I order a "LE083BLU" using the SMART-API # -- Cufflinks
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"
    When I start a new session
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"
    
Scenario: SMART-content merchandising rule "purchasedByCategory" works after I log in
    When I order a "LE083BLU" using the SMART-API # -- Cufflinks
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"
    Given I am using username "Web Test" and email "webtest@mailinator.com"
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"

Scenario: PEERIUS-1527 -- CT Shirts does not get SMART-content on the home page after visiting a category page
    #Given I am using username "Web Test" and email "webtest@mailinator.com"
    And I track the home page
    Then I should get an OK status back
    When I am on the ctshirts category page
    And I create a session and cuid cookie from the api
    Then it should be tracked as a category page
    When I track the home page
    Then I should get an OK status back
    
Scenario: PEERIUS-1527 -- CT Shirts does not get SMART-content on the home page after visiting a category page
    #Given I am using username "Web Test" and email "webtest@mailinator.com"
    Given I am on the ctshirts category page
    Then it should be tracked as a category page
    When I pass the session and cuid cookie to the api
    And I track the home page
    Then I should get an OK status back
    
Scenario: PEERIUS-1527 -- CT Shirts does not get SMART-content on the home page after visiting a category page
    #Given I am using username "Web Test" and email "webtest@mailinator.com"
    Given I am on the ctshirts category page
    Then it should be tracked as a category page
    When I pass the session and cuid cookie to the api
    And I track the home page
    Then I should get an OK status back

#Plz note in this scenario 	we've pause for 4hrs 15mins for session expiry analyser to run
Scenario: SMART-content rule "customer=returning" from direct works using SMART-API 
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a "FP009PNK" using the SMART-API
    When I start a new session
	#When I pass the session and cuid cookie to the api
	And I pause for 15300 seconds
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
	#Plz note this scenario is dependent on scheduler	
	Scenario: SMART-content rule "segments" from direct works using SMART-API 
    When I track the home page
	Then I should get an OK status back
  #  And I track a click for the first SMART-content creative
    And I purchase a "KH064GRN" using the SMART-API
	And I purchase a "KH070CRM" using the SMART-API
	And I purchase a "KH052NTL" using the SMART-API
  #  When I start a new session
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"

#Plz note this scenario is dependent on scheduler	
Scenario Outline: SMART-content rule "average days between orders" works using SMART-API   
    When I track the home page
  #  And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1" 
    Examples:
    | product    |
    | "FP009PNK" |
	| "FL037BLU" |
	
Scenario Outline: SMART-content rule "total orders" works using SMART-API
    When I track the home page
#	And I pause for 20 seconds
    And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Casual - knitwear - merino" 
    Examples:
    | product    |
	| "FL037BLU" |
	| "KH064GRN" |
	| "KH070CRM" |