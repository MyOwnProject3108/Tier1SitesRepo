Feature: SMART-recs
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised recommendations

@ctshirts
Scenario: SMART-recs appear on product page
    Given I am on the ctshirts product page
    Then I should see SMART-recs

#
# SMART-API SMART-recs
#    
@smartapi @wip  
    Scenario: SMART-recs clicks can be tracked using SMART-API
        Given I am using SMART-API to access livedemoshop
        When I track the home page
        And I track a click for the first SMART-rec
        Then I should get an OK status back