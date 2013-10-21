@smartmanager
Feature: SMART-manager

#
# Smart product tests
#
 
Background:
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  #Then I should end up on the orders page
 # Given I am on the smartmanager home page
 # When I click on old interface link on the orders page
 # And I pause for 5 seconds
 # Then I should end up on the home page
  
Scenario: Users should be able to click on SMART-reporting
Then I should end up on the orders page
 # Given I am on the smartmanager home page
  When I click on old interface link on the orders page
  And I pause for 5 seconds
  Then I should end up on the home page
  When I click on the smartmanger reporting link 
  And I pause for 5 seconds
  Then I should end up on the reporting page

Scenario: Users should be able to click on Merchandising
  When I click on the smartmanger merchandising link
  And I pause for 5 seconds  
  Then I should end up on the merchandising page
  
Scenario: Users should be able to click on Email
  When I click on the smartmanger email link 
  And I pause for 5 seconds  
  Then I should end up on the email page
  
Scenario: Users should be able to click on Config
#  When I click on the smartmanger config link 
  When I click on the smartmanger config link on the home page
  And I pause for 5 seconds  
  Then I should end up on the administration page
  
Scenario: Users should be able to click on Smart-Landing
  When I click on the smartmanger landing link 
  And I pause for 5 seconds  
  Then I should end up on the smartlanding page
  
Scenario: Users should be able to click on Smart-Ranking
  When I click ranking on the smartmanager home page
  And I pause for 5 seconds  
  Then I should end up on the smartranking page
  
 Scenario: Users should be able to click on Smart-Content
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page

Scenario: Users should be able to click on Settings
 When I click settings on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the settings page
