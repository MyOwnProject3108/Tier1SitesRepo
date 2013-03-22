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
  Then I should end up on the emailcreate page
  And I enter name as "AutoTestEmail"
  And I enter content width as 200 and height as 140
  And  I click title color picker 
 # And I click color
  
  
  
  
  
  
  
 
