@smartmanager
Feature: SMART-manager

#
# product tests
#
  
Scenario: Users should be able to click on SMART-reporting
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click reporting
  Then I should end up on the reporting page

Scenario: Users should be able to click on Merchandising
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click merchandising
  Then I should end up on the merchandising page
  
Scenario: Users should be able to click on Email
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click email
  Then I should end up on the email page
  
Scenario: Users should be able to click on Config
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  
 Scenario: Users should be able to click on Smart-Landing
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click landing
  Then I should end up on the smartlanding page
  
 Scenario: Users should be able to click on Smart-Ranking
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click ranking
  Then I should end up on the smartranking page
  
 Scenario: Users should be able to click on Smart-Content
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click content
  Then I should end up on the smartcontent page

  Scenario: Users should be able to click on Settings
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click settings
  Then I should end up on the settings page
