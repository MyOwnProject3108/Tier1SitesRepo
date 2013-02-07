Feature: SMART-API: ordering
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius
  
@smartapi   
Scenario: I can order multiple products
	Given I am using SMART-API v1_1 to access livedemoshop
	When I order product "ABC-123"
	When I order product "ABC-456"
	When I order product "ABC-777"
	When I order product "HITHERE-TEST"
	Then I should get an OK status back