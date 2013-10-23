@ignore
@smartapi
@ctshirts
Feature: SMART-API CT Shirts specific tests

Background:
    Given I am using the ctshirts API test config
    And I am using SMART-API to access ctshirts
    And I am using client token 677ab692r2t31
    And I am using production client token 677ab692r2t31
	
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
	And one of the SMART-content creative names should contain "LS2"		

Scenario: Testing the smart content as per "weightage(ex:visitor returning)" using SMART-API 
	When I track the home page
   # And I track a click for the first SMART-content creative
    When I start a new session
	 And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "LS3"

	

