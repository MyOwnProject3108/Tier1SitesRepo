@smartmanager
Feature: SMART-manager

#
# login tests
#

Background:
Given I am on the smartmanager login page

Scenario: Users should be able to login to SMART-manager
  And I login as "fsultana" using password "4n424yq4n3w"
  Then I should end up on the home page
  
Scenario: Users should be able to login to SMART-manager
 And I login as "fsultana" using password "abc"
  Then I should see an "Invalid credentials" message

Scenario: Users should be able to logout of SMART-manager
 And I login as "fsultana" using password "4n424yq4n3w"
  And I should end up on the home page
  And I click logout
  Then  I should end up on the login page
