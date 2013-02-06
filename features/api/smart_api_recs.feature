Feature: SMART-recs
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised recommendations

#
# SMART-API SMART-recs
#    
@smartapi  
    Scenario: SMART-recs clicks can be tracked using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track the home page
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
		