@demostoredev
@smartapi
@smartranking

Feature: SMART-API: Non-site specific SMART-ranking tests for DemostoreDev
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised category pages

Scenario:01 Activate Ranking Campaign in Db for API test 
	Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    Then I activate "API test" ranking category campaign in DB 
    
Scenario:02 SMART-ranking can be delivered on category page using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    When I supply SMART-ranking setup with product field for "Entertainment>Blu-ray" and facets cat "category="Entertainment>Blu-ray""
	And I track the configured category page for "Entertainment>Blu-ray" 
	Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content
        	
Scenario:03 SMART-ranking can be delivered on category page2 using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
 	When I supply SMART-ranking setup with product field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
	And I track the configured category page for "Electricals>Cameras" 
    #And I track the category page        
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content

Scenario:04 SMART-ranking can be delivered on category page using SMART-API without Smartproducts field in request
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
   	When I supply SMART-ranking setup without smartproduct field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
    Then I should get an OK status back
	And I should get at least 2 items of SMART-ranking content
	
Scenario:05 SMART-ranking can be delivered on category page using SMART-API with Smartproducts enabled for SMARTRECS only -expecting no recs
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
   	When I supply SMART-ranking setup with smartrecs only field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
	#And I track the configured category page for "Electricals>Cameras" 
    Then I should get an OK status back
	And I should get no items of SMART-ranking content
	
Scenario:06 SMART-ranking can be delivered on category page with criteria term=bag for all categories using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
 	When I supply SMART-ranking setup with product field for "Electricals>Cameras" and facets cat "term="bag""
	And I track the configured category page for "Electricals>Cameras" 
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content
	#And the first SMART-Ranking recs title should contain "Bag" -- currenlty cann't validate this this step

Scenario:07 SMART-ranking can be delivered on category page with criteria pricerange="expensive" for all categories using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
 	When I supply SMART-ranking setup with product field for "Electricals>Tablets" and facets cat "pricerange="expensive""
	And I track the configured category page for "Electricals>Tablets" 
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content
	#And the first SMART-Ranking recs title should contain "Tablets" -- currenlty cann't validate this this step
	
Scenario: SMART-ranking can be delivered on category page with facets cat "colour="red" or colour="blue" for all categories using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
 	When I supply SMART-ranking setup with product field for "Clothing>Mens>Tops" and facets cat "colour="red" or colour="blue""
	And I track the configured category page for "Clothing>Mens>Tops" 
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content
	
Scenario:08 Peerius DemoStoreDev SMART-ranking clicks can be tracked on DB using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    When I supply SMART-ranking setup without smartproduct field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
    And I track a click for the first SMART-ranking item
    Then I should get an OK status back
	And I wait for denormalisation to finish
	Then I should see at least 1 SMART-ranking clicks in the DB

Scenario:09 Ranking test from HomePage
	Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
	When I track the home page	
	Then I should get an OK status back
	When I supply SMART-ranking setup with product field for "Clothing>Mens>Tops" and facets cat "colour="red" or colour="blue""
	And I track the configured category page for "Clothing>Mens>Tops" 
    Then I should get an OK status back
	And I should get at least 2 items of SMART-ranking content
	 
Scenario:10 for known user
	Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    When I am using username "Test Ranking" and email "Ranktest@mailinator.com"
	When I track the home page	
	Then I should get an OK status back
	When I supply SMART-ranking setup with product field for "Clothing>Mens>Tops" and facets cat "colour="red" or colour="blue""
	And I track the configured category page for "Clothing>Mens>Tops" 
    Then I should get an OK status back
	And I should get at least 2 items of SMART-ranking content	 

## AB group tests
Scenario:11 SMART-ranking A/B groups can be detected using SMART-API "summary"
    Given I am using SMART-API to access demostoredev
	And I am using client token d3m05t0r3d3vt35tu4t
   	When I track the configured SMART-Ranking category page for AB group "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
#	Then I should see which "Ranking" AB group is being served           -- currenlty cann't validate this this step
    When I request SMART-ranking abgroup information
#	And I track the configured category page for "Electricals>Cameras" in AB test  -- currenlty cann't validate this this step
    Then I should get an OK status back
    #And I should see which smartRanking abgroup I am serving                -- currenlty cann't validate this this step

Scenario:12 SMART-ranking A/B groups can be detected using SMART-API "full"
    Given I am using SMART-API to access demostoredev
	And I am using client token d3m05t0r3d3vt35tu4t
	When I track the configured SMART-Ranking category page for AB group "Electricals>Tablets" and facets cat "gender="unisex""
	#Then I should see which "Ranking" AB group is being served 
    When I request SMART-ranking abgroup information
    Then I should get an OK status back
   # And I should see which smartRanking abgroup I am serving  -- currenlty cann't validate this this step
#	And I should see at least 2 smartRanking ab test configs	-- currenlty cann't validate this this step

