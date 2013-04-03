@smartmanager
Feature: SMART-manager

#
# email widget deletion tests 
#
Background:
Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Then I should end up on the home page
  When I click on the smartmanger email link 
  Then I should end up on the email page
  
Scenario: Users should be able to delete email widget
  When I click on the create link on the email page
  Then I should end up on the emailcreate page
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  When I drag "Product Catalog" rule to the position 1 slot
  And copy position 1 configuration to position 2
  And I enter email as "webtest@mailinator.com"
  And I click on the save button on the emailcreate page
  Then I should end up on the email page
  When I click on the delete link on the email page
  And I confirm the delete email widget
  Then I should end up on the email page  
  
  
  
  
  
  
 
