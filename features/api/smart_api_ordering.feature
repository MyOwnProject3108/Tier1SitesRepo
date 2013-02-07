Feature: SMART-API: ordering
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius
  
@smartapi @internal   
Scenario: I can order multiple products
	Given I am using SMART-API v1_1 to access topshop
	And I am using client token 89hyuaa2da3a
	When I order product "TS02Y21DIND"
	When I order product "TS02Z31DBLK"
	When I order product "TS23Y18DGYM"
	When I order product "TS02Y08CWNE"
	Then I should get an OK status back