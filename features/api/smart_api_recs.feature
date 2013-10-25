@ignore
@livedemoshop
@smartapi
Feature: SMART-API: Non-site specific SMART-recs tests
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised recommendations

    Scenario: SMART-recs A/B groups can be detected using SMART-API "summary"
        Given I am using SMART-API to access livedemoshop
        And I request summary abgroup information
        When I track a product page
        Then I should get an OK status back
        And I should see which smartRecs abgroup I am serving

    Scenario: SMART-recs A/B groups can be detected using SMART-API "full"
        Given I am using SMART-API to access livedemoshop
        And I request full abgroup information
        When I track a product page
        Then I should get an OK status back
        And I should see which smartRecs abgroup I am serving
        And I should see at least 1 smartRecs ab test configs
        
    Scenario Outline: All SMART-recs attributes can be retrieved using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request all attributes
        And I request <content> rec content
        When I track a product page
        Then I should get an OK status back
        And I should get at least 1 SMART-recs in the response
        And I should see at least 2 attributes per rec
        Examples:
        | content     |
        | full        |
        | refCodeOnly |
        
    Scenario Outline: Selected SMART-recs attributes can be retrieved using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request one attribute
        And I request <content> rec content
        When I track a product page
        Then I should get an OK status back
        And I should get at least 1 SMART-recs in the response
        And I should see exactly 1 attribute per rec
        Examples:
        | content     |
        | full        |
        | refCodeOnly |

    Scenario Outline: SMART-recs attributes are only sent when requested using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request no attributes
        And I request <content> rec content
        When I track a product page
        Then I should get an OK status back
        And I should get at least 0 SMART-recs in the response
        And I should see no attributes
        Examples:
        | content     |
        | full        |
        | refCodeOnly |
