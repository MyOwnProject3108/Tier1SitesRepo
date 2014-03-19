#@ignore
@livedemoshop
@smartapi
Feature: SMART-API: Non-site specific SMART-content
  In order to get the most out of my shopping experience
  As a website user
  I want to see home page content tailored to me
  
Background:
Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works using SMART-API   
	Given I am using SMART-API to access livedemoshop
    When I track the home page
    And I track a click for the first SMART-content creative
    And I purchase a <product> using the SMART-API
    And I track the home page
    Then I should get at least 1 SMART-content creatives in the response
    And the first SMART-content creative name should contain <category_name>
    Examples:
    | product         | category_name |
    | "prod-ev003wht" | "Shirts"      |
    | "prod-tv017baq" | "Ties"        |
    | "prod-mc075bgd" | "Shoes"       |

Scenario: SMART-content A/B groups can be detected using SMART-API "summary"
   When I request summary abgroup information
   When I track the home page
   # And I track a home page
    Then I should get an OK status back
    And I should see which smartContent abgroup I am serving

Scenario: SMART-content A/B groups can be detected using SMART-API "full"
    #When I request full abgroup information
	When I track the home page
    And I track a home page
    Then I should get an OK status back
    And I should see which smartContent abgroup I am serving
	  And I should see at least 2 smartContent ab test configs

Scenario: SMART-content impressions are denormalised in the db using SMART-API
    When I track the home page
	And I track the home page
	And I wait for denormalisation to finish
    Then I should get an OK status back
	And I should see at least 3 SMART-content impressions in the DB
	And I should see no SMART-content clicks in the DB
	
Scenario: SMART-content clicks are denormalised in the db using SMART-API
    When I track the home page
    Then I should get an OK status back
    When I track a click for the first SMART-content creative
    When I track the home page
    When I track a click for the first SMART-content creative
    When I track the home page
    When I track a click for the first SMART-content creative
    And I wait for denormalisation to finish
	Then I should see at least 3 SMART-content clicks in the DB
	  
##Below scenario covered in Cthsirts_Api _tests
#Scenario: SMART-content rule "default" works using SMART-API  
   # When I track the home page
   # Then I should get an OK status back
#	And I should get at least 1 SMART-content creatives in the response
#	And one of the SMART-content creative names should contain "Ties side"
	
Scenario: SMART-content merchandising rule "tags" works using SMART-API 
    When I track the home page
    Then I should get an OK status back
	And I should get at least 1 SMART-content creatives in the response
	And one of the SMART-content creative names should contain "Coats side"
	
	