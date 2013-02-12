Feature: SMART-API: SMART-recs
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised recommendations

#
# SMART-API SMART-recs
#
@smartapi
    Scenario: SMART-recs clicks can be tracked using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track a product page
        And I track a click for the first SMART-rec
        Then I should get an OK status back

@smartapi
    Scenario: SMART-recs A/B groups can be detected using SMART-API "summary"
        Given I am using SMART-API to access livedemoshop
        And I request summary abgroup information
        When I track a product page
        Then I should get an OK status back
        And I should see which smartRecs abgroup I am serving

@smartapi
    Scenario: SMART-recs A/B groups can be detected using SMART-API "full"
        Given I am using SMART-API to access livedemoshop
        And I request full abgroup information
        When I track a product page
        Then I should get an OK status back
        And I should see which smartRecs abgroup I am serving
        And I should see at least 1 smartRecs ab test configs
        
@smartapi
    Scenario: All SMART-recs attributes can be retrieved using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request all attributes
        When I track a product page
        Then I should get an OK status back
        And I should get at least 1 SMART-recs in the response
        And I should see at least 2 attributes
        
@smartapi
    Scenario: Selected SMART-recs attributes can be retrieved using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request one attribute
        When I track a product page
        Then I should get an OK status back
        And I should get at least 1 SMART-recs in the response
        And I should see exactly 1 attribute

@smartapi
    Scenario: SMART-recs attributes are only sent when requested using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request no attributes
        When I track a product page
        Then I should get an OK status back
        And I should get at least 1 SMART-recs in the response
        And I should see no attributes