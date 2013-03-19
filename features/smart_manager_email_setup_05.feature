@smartmanager
Feature: SMART-manager

#
# email tests 
#
  
Scenario: Users should be able to create email recs
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click email
  Then I should end up on the email page
  When I click create
  
  
 
