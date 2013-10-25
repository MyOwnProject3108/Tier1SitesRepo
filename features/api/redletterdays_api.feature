@smartapi
@redletterdays
Feature: SMART-API: Red Letter Days specific tests

#
# SMART-API zero-search
#
Scenario: Zerosearch SMART-recs are delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response
  
  
Scenario:SMART-recs are delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a Home page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response  

Scenario: Zerosearch SMART-recs are delivered using SMART-API  
  Given I am using SMART-API v1_2 to access topshop
	And I am using client token 89hyuaa2da3a
	When I order a "TS05B07DLBL" using the SMART-API
	When I order a "TS16G30UBLK" using the SMART-API
	When I order 2 "TS08F25VBLK" using the SMART-API
	When I order 3 "TS08F01VBLK" using the SMART-API
	Then I should get an OK status back