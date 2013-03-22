@smartmanager
Feature: SMART-manager

#
# Smart product tests
#
 
Background:
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Given I am on the smartmanager home page
  
Scenario: Users should be able to click on SMART-reporting
  When I click on the smartmanger reporting link 
  Then I should end up on the reporting page

Scenario: Users should be able to click on Merchandising
  When I click on the smartmanger merchandising link 
  Then I should end up on the merchandising page
  
Scenario: Users should be able to click on Email
  When I click on the smartmanger email link 
  Then I should end up on the email page
  
Scenario: Users should be able to click on Config
  When I click on the smartmanger config link 
  Then I should end up on the administration page
  
Scenario: Users should be able to click on Smart-Landing
  When I click on the smartmanger landing link 
  Then I should end up on the smartlanding page
  
Scenario: Users should be able to click on Smart-Ranking
  When I click ranking on the smartmanager home page
  Then I should end up on the smartranking page
  
 Scenario: Users should be able to click on Smart-Content
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page

Scenario: Users should be able to click on Settings
 When I click settings on the smartmanager home page
 Then I should end up on the settings page
