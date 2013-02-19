Feature: SMART-API: SMART-content
  In order to get the most out of my shopping experience
  As a website user
  I want to see home page content tailored to me

#
# SMART-API SMART-content
#
@smartapi
    Scenario: SMART-content can be delivered using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track the home page
        Then I should get an OK status back
        And I should get at least 1 SMART-content creatives in the response

@smartapi
    Scenario: SMART-content clicks can be tracked using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track the home page
        And I track a click for the first SMART-content creative
        Then I should get an OK status back

@smartapi
    Scenario Outline: SMART-content merchandising rule "purchasedByCategory" works using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track the home page
        And I track a click for the first SMART-content creative
        And I purchase a <product> using the SMART-API
        And I track the home page
        Then the first SMART-content creative name should contain <category_name>
        Examples:
        | product         | category_name |
        | "prod-ev003wht" | "Shirts"      |
        | "prod-tv017baq" | "Ties"        |
        | "prod-mc075bgd" | "Shoes"       |

@smartapi
    Scenario: SMART-content A/B groups can be detected using SMART-API "summary"
        Given I am using SMART-API to access livedemoshop
        And I request summary abgroup information
        When I track a home page
        Then I should get an OK status back
        And I should see which smartContent abgroup I am serving


@smartapi
    Scenario: SMART-content A/B groups can be detected using SMART-API "full"
        Given I am using SMART-API to access livedemoshop
        And I request full abgroup information
        When I track a home page
        Then I should get an OK status back
        And I should see which smartContent abgroup I am serving
    	  And I should see at least 2 smartContent ab test configs

