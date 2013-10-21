@smartapi 
@topshop
Feature: SMART-API TopShop specific tests
    
Scenario: I can order multiple products
	Given I am using SMART-API v1_2 to access topshop
	And I am using client token 89hyuaa2da3a
	When I order a "TS05B07DLBL" using the SMART-API
	When I order a "TS16G30UBLK" using the SMART-API
	When I order 2 "TS08F25VBLK" using the SMART-API
	When I order 3 "TS08F01VBLK" using the SMART-API
	Then I should get an OK status back
	
#Feature:Variant info for current and new session & CUID
Scenario: I can order products with "variant_info"
	Given I am using SMART-API v1_2 to access topshop
	And I am using client token 89hyuaa2da3a
	#When I order product "TS19H28EBLK" with variant info using the SMART-API
	When I order product "TS13A56EGRN" with variant colour "red" size "8" using the SMART-API	
	When I start a new session
	#When I order product "TS19H28EBLK" with variant info using the SMART-API
	When I order product "TS19H28EBLK" with variant colour "red" size "8" using the SMART-API
	Then I should get an OK status back
	
Scenario: I can order products with "variant_info recs"
	Given I am using SMART-API v1_2 to access topshop
	And I am using client token 89hyuaa2da3a
	When I order product "TS35C13ERED" with variant colour "red" size "8" using the SMART-API	
	Then I should get an OK status back
	When I track the product page for variant info
	And I should get at least 2 SMART-recs in the response
	Then one of the variant title should contain "black"
		 
Scenario: Basket page is tracked using SMART-API v1_2
	Given I am using SMART-API v1_2 to access topshop
	And I am using client token 89hyuaa2da3a
	#When I track the product page for variant info
	#When I add a product "TS16H75UBLK" with variant colour "red" size "6" using the SMART-API to basket
	When I track a variant "TS16H75UBLK" basket page with variant colour "red" size "6" using the SMART-API	
    #When I track a variant basket page with varinfo
	Then I should get an OK status back
    When I track the product page for variant info
	And I should get at least 2 SMART-recs in the response
	Then I should get an OK status back
#	And one of the variant info should contain "black"