@smartapi
Feature: SMART-API: ordering
  In order to get customer behaviour insights
  As a website owner
  I want to use an API to track user behaviour using Peerius
  
@smartapi @internal   
Scenario: I can order multiple products
	Given I am using SMART-API v1_1 to access topshop
	And I am using client token 89hyuaa2da3a
	When I order a "TM66F02BBLE" using the SMART-API
	When I order a "TS16G30UBLK" using the SMART-API
	When I order 2 "TS08F25VBLK" using the SMART-API
	When I order 3 "TS08F01VBLK" using the SMART-API
	Then I should get an OK status back