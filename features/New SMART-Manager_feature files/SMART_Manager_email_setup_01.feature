@smartmanager
Feature: New SMART-manager

#
# email tests for new Smart-manager
#

Background:
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager home page
 And I pause for 10 seconds
 And I select "ctshirts" from the sites list on the smartmanager home page
 And I click on the New and Shiny Smart Manager link on the smartmanager home page
 And I pause for 5 seconds
 Then I should end up on the orders page
 When I click on the smartmanger email link
 Then I should end up on the newemail page
 When I click on the "Create a new campaign" link on the newemail page
 Then I should end up on the newemailcreate page
 
 Scenario: Verifying the styling for  
  And I enter email campaign name as "AutoTestEmailCampaign1"
  And I enter email content width as 220 and height as 140
  And I enter background colour "#804040" on the newemailcreate page
  And I pause for 10 seconds
  And I enter title colour "#2beb61" on the newemailcreate page
  And I pause for 10 seconds
  And I select title font on the newemailcreate page
  And I pause for 2 seconds
  And I select title characteristics on the newemailcreate page
  And I pause for 10 seconds
  And I select font size on the newemailcreate page
  And I pause for 10 seconds
  And I enter price colour "#f2db0c" on the newemailcreate page
  And I pause for 10 seconds
  And I select price font on the newemailcreate page
  And I pause for 2 seconds
  And I select price characteristics on the newemailcreate page
  And I pause for 10 seconds
  And I select price size on the newemailcreate page
  And I pause for 5 seconds
  And I click the next button on the newemailcreate page
  And I pause for 10 seconds
  
  
  
  

