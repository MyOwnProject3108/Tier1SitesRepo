@smartapi
@ctshirts
Feature: SMART-API CT Shirts specific Smart Content rule tests

Background:
    Given I am using the ctshirts API test config
    And I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t3
    And I am using production client token 677ab692r2t3
	
Scenario: SMART-content rule "default" works using SMART-API  
    When I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
Scenario: SMART-content rule "tags" works using SMART-API 
    #When I track the home page
	When I post the home page request with tags
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"
	
Scenario: SMART-content rule "country GBP" works using SMART-API 
   When I post request with GBP ip
    And I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
Scenario: SMART-content rule "country US" works using SMART-API 
    When I post request with USA ip
    And I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS2"
	
Scenario: SMART-content rule "country FR" works using SMART-API 
    When I post request with France ip
    And I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"

Scenario: SMART-content rule "direct" works using SMART-API 
  	When I track the home page
    Then I should get an OK status back
	And I track the home page
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
Scenario: SMART-content rule "gender" works using SMART-API 
    When I post product page request for the gender
    Then I should get an OK status back
	And I track the home page
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Suits - GROUP"
	
Scenario: SMART-content rule "keyword" works using SMART-API 
    When I post home page request with google search engine as currentURI
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Shirts - formal - NON-IRON GROUP"
	
Scenario: SMART-content rule "organic" works using SMART-API 
    When I post home page request with google search engine as previousURI
    Then I should get an OK status back
	#And I track the home page
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Shoes - GROUP"
	
Scenario: SMART-content rule "ppc" works using SMART-API 
    When I post home page request with google search engine as previousURI for PPC
    Then I should get an OK status back
	#And I track the home page
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Casual - knitwear - merino"
	
Scenario: SMART-content rule "source" from direct works using SMART-API 
    When I post home page request for source as direct
     Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
Scenario: SMART-content rule "city" from direct works using SMART-API 
    When I post home page request for city
     Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Shirts - casual - GROUP"
	
Scenario: SMART-content rule "smart" from direct works using SMART-API 
    When I track the home page
     Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"

	
Scenario: SMART-content rule "visitor=new" from direct works using SMART-API 
    When I track the home page
     Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS1"
	
Scenario: SMART-content rule "visitor returning" from direct works using SMART-API 
	When I track the home page
    And I track a click for the first SMART-content creative
    When I start a new session
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS2"
	
Scenario: SMART-content rule "customer=new" from direct works using SMART-API 
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a "FP009PNK" using the SMART-API
    When I start a new session
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"
	
Scenario: Testing the smart content as per "weightage(ex:countrycode = GB)" using SMART-API 
   When I post request with GBP ip
    And I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
<<<<<<< HEAD
	And one of the SMART-content creative names should contain "LS1"	

#Activate purchasehistorybycategoryTest	in Shop admin
Scenario Outline: SMART-content merchandising rule "purchasedHistoryByCategory" works with single purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
    #When I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response
    And the first SMART-content creative name should contain <category_name>
    Examples:
  	| product    | category_name |
   # | "SN061WHT" | "NON-IRON"     |
    #| "JK076BLU" | "trousers"  |
    | "EPA07GRY" | "Suits"       |
    | "LE083BLU" | "cufflinks"   |
    | "TH099RYL" | "Ties"        |
    | "MP027TAN" | "Shoes"       |
	
#Activate TopBanner - SMART	
Scenario: SMART-content merchandising rule "purchasedHistoryByCategory" works across sessions
    Given I am using username "Web Test" and email "webtest@mailinator.com"
    When I order a "LE083BLU" using the SMART-API # -- Cufflinks
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"
    When I start a new session
	When I relogin with username "Web Test" and email "webtest@mailinator.com"
    And I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "cufflinks"
	
#Activate PurchaseHistoryByAttribute in Shop admin
Scenario Outline: SMART-content merchandising rule "PurchaseHistoryByAttribute" works with single purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
    #When I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response
    And the first SMART-content creative name should contain <attribute_name>
    Examples:
  	| product    | attribute_name |
	# works fine same category as creative
    | "CD077RED" | "LS1"          |  
	#different category from creative
    | "MD019TAN" | "LS1"          |    
	
#Activate lastviewedcategoryqa	in Shop admin
Scenario: SMART-content merchandising rule "Lastviewedcategory" works with single purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
	When I track an "ties" category page
    Then it should get an OK status back
    When I track the home page
    Then I should get an OK status back
	#And one of the SMART-content creative names should contain "ties"
    And one of the SMART-content creative names should contain "Ties"
	
#Activate lastviewedcategoryqa--need to remove ties from last setup for LVC	in Shop admin
Scenario: SMART-content merchandising rule "Lastviewedcategorywithparameter" works with single purchases using SMART-API
    When I track an "ties" category page
    Then it should get an OK status back
    When I track the home page
    Then I should get an OK status back
    And one of the SMART-content creative names should contain "Trousers"	


#Numberofdayssincelastorder 	
	#Push the home page request with new cuid and session id.From the response 
	#take the cuid and create historical purchase(post order request).Now use the same cuid and push 
	#the home page request then should see OK response with the smart content
	
Scenario Outline: SMART-content merchandising rule "Numberofdayssincelastorder" works with single purchases using SMART-API
    When I track the home page
    Then I should get an OK status back
    #When I track a click for the first SMART-content creative
    And I insert order for a <product> using the SMART-API
    And I track the home page
    Then I should get an OK status back
    And I should get at least 1 SMART-content creatives in the response
    And the first SMART-content creative name should contain <category_name>
    Examples:
  	| product    | category_name |
   # | "SN061WHT" | "NON-IRON"     |
    #| "JK076BLU" | "trousers"  |
    | "EPA07GRY" | "Suits"       |
    | "LE083BLU" | "cufflinks"   |
    | "TH099RYL" | "Ties"        |
    | "MP027TAN" | "Shoes"       |
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  
    
	
 
	
=======
	And one of the SMART-content creative names should contain "LS2"		

Scenario: Testing the smart content as per "weightage(ex:visitor returning)" using SMART-API 
	When I track the home page
   # And I track a click for the first SMART-content creative
    When I start a new session
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"

	

>>>>>>> 6f8bddeb90559196f2f3cc080e85751e9bfd304d
