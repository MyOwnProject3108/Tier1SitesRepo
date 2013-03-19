@smartmanager
Feature: SMART-manager

#
# AB group tests 
#
  
Scenario: Users should be able activate AB group
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click AB tests
  Then I should end up on the group page
  And I enter A=50 and B=50
  #And I select "AutoTestWidgetEdit" for groupA and groupB
  And I select "AutoTestWidgetEdit" for both groups
  And I click create
  Then I should end up on the group page
  
  
  
 

  
  
  
  

   
  
  
  
  
  
