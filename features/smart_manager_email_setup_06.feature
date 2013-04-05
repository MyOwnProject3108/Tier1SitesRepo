@smartmanager
Feature: SMART-manager

#
# email tests 
#
Background:
Given I am on the smartmanager login page
And I login as "fsultana" using password "4n424yq4n3w"
Then I should end up on the home page
  
Scenario: Users should be able to create email recs
 When I click on the smartmanger email link 
  Then I should end up on the email page
  When I click on the create link on the email page
  Then I should end up on the emailcreate page
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
 And I select price color "red"
 And I select background color "yellow"
  
  
  
  
  
  
  
 
