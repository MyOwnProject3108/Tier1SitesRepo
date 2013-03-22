@smartmanager
Feature: SMART-manager

#
# product tests
#
 
Background:
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  
Scenario: Users should be able to click on SMART-reporting
  When I click reporting
  Then I should end up on the reporting page

Scenario: Users should be able to click on Merchandising
  When I click merchandising
  Then I should end up on the merchandising page
  
Scenario: Users should be able to click on Email
  When I click email
  Then I should end up on the email page
  
Scenario: Users should be able to click on Config
  When I click config
  Then I should end up on the administration page
  
 Scenario: Users should be able to click on Smart-Landing
  When I click landing
  Then I should end up on the smartlanding page
  
 Scenario: Users should be able to click on Smart-Ranking
  When I click ranking
  Then I should end up on the smartranking page
  
 Scenario: Users should be able to click on Smart-Content
  When I click content
  Then I should end up on the smartcontent page

  Scenario: Users should be able to click on Settings
  When I click settings
  Then I should end up on the settings page
