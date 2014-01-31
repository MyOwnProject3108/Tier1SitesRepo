@livedemoshop
@smartapi
@smartranking
Feature: SMART-API: Non-site specific SMART-ranking tests
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised category pages
  
Scenario: SMART-ranking can be delivered on category page using SMART-API
    Given I am using SMART-API to access livedemoshop
    And I am using client token gfsdkl47gh3248
    #When I supply SMART-ranking setup info
	When I supply SMART-ranking setup with product field for "ties" and facets cat "ties"
	And I track the configured category page for "ties" 
    #And I track the category page        
    Then I should get an OK status back
    And I should get at least 1 items of SMART-ranking content
        	
Scenario: SMART-ranking A/B groups can be detected using SMART-API "summary"
    Given I am using SMART-API to access livedemoshop
    And I request summary abgroup information
    When I track a category page
    Then I should get an OK status back
    And I should see which smartRanking abgroup I am serving

Scenario: SMART-ranking A/B groups can be detected using SMART-API "full"
    Given I am using SMART-API to access livedemoshop
    And I request full abgroup information
    When I track a category page
    Then I should get an OK status back
    And I should see which smartRanking abgroup I am serving
	And I should see at least 2 smartRanking ab test configs

