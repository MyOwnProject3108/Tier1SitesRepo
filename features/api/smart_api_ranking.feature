@demostoredev
@smartapi
@smartranking
Feature: SMART-API: Non-site specific SMART-ranking tests
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised category pages
  
Scenario:01 SMART-ranking can be delivered on category page using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    #When I supply SMART-ranking setup info
	When I supply SMART-ranking setup with product field for "Entertainment>Blu-ray" and facets cat "category="Entertainment>Blu-ray""
	And I track the configured category page for "Entertainment>Blu-ray" 
	#And I track the category page        
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content
        	
Scenario:02 SMART-ranking can be delivered on category page2 using SMART-API
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
    #When I supply SMART-ranking setup with product field for "ties" and facets cat "Electricals>Cameras"
	When I supply SMART-ranking setup with product field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
	And I track the configured category page for "Electricals>Cameras" 
    #And I track the category page        
    Then I should get an OK status back
    And I should get at least 2 items of SMART-ranking content

Scenario:03 SMART-ranking can be delivered on category page using SMART-API without Smartproducts
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
   	When I supply SMART-ranking setup without smartproduct field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
	And I track the configured category page for "Electricals>Cameras" 
    Then I should get an OK status back
	And I should get at least 2 items of SMART-ranking content
	
Scenario:04 SMART-ranking can be delivered on category page using SMART-API with Smartproducts enabled for SMARTRECS only
    Given I am using SMART-API to access demostoredev
    And I am using client token d3m05t0r3d3vt35tu4t
   	When I supply SMART-ranking setup with smartrecs only field for "Electricals>Cameras" and facets cat "category="Electricals>Cameras""
	And I track the configured category page for "Electricals>Cameras" 
    Then I should get an OK status back
	And I should get no items of SMART-ranking content
	

##Step needs tweaking
Scenario: SMART-ranking A/B groups can be detected using SMART-API "summary"
    Given I am using SMART-API to access demostoredev
	And I am using client token d3m05t0r3d3vt35tu4t
    When I request SMART-ranking abgroup information
	And I track the configured category page for "Electricals>Cameras" in AB test
    Then I should get an OK status back
    And I should see which smartRanking abgroup I am serving

Scenario: SMART-ranking A/B groups can be detected using SMART-API "full"
    Given I am using SMART-API to access demostoredev
	And I am using client token d3m05t0r3d3vt35tu4t
    And I request full abgroup information
    When I track a category page
    Then I should get an OK status back
    And I should see which smartRanking abgroup I am serving
	And I should see at least 2 smartRanking ab test configs	

