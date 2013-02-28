@smartmanager
Feature: SMART-manager

#
# login tests
#


Scenario: Users should be able to login to SMART-manager
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Then I should end up on the home page
  
Scenario: Users should be able to login to SMART-manager
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "abc"
  Then I should see an "Invalid credentials" message
  
Scenario: Users should be able to click on SMART-reporting
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click "reporting"
  Then I should end up on the reporting page

Scenario: Users should be able to click on SMART-reporting
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click "merchandising"
  Then I should end up on the merchandising page  
