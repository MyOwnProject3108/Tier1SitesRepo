Feature: SMART-recs
  In order to get the most out of my shopping experience
  As a website user
  I want to see personalised recommendations

Scenario Outline: SMART-rec links work
  Given I am on the <site> product page
  And I click the first SMART-rec image link 
  Then I should end up on a product page
  Examples:
  | site          |
  | ctshirts      |
  | wallis        |
  | cottontraders |
  | lovehoney     |


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
    Scenario: SMART-recs A/B groups can be detected using SMART-API
        Given I am using SMART-API to access livedemoshop
        And I request summary abgroup information
        When I track the home page
        Then I should get an OK status back
        And I should see which abgroup I am serving                     