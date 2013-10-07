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
 
 Scenario: Verifying the styling for  Email campaigns for New Smart Manager
  And I enter email campaign name as "AutoTestEmailCampaign1"
  And I enter email content width as 220 and height as 140
  And I enter background colour "#804040" on the newemailcreate page
  And I pause for 10 seconds
  And I enter title colour "#2beb61" on the newemailcreate page
  And I pause for 10 seconds
  And I select title font on the newemailcreate page
  And I pause for 10 seconds
  And I select title characteristics on the newemailcreate page
  And I pause for 10 seconds
  And I select font size on the newemailcreate page
  And I pause for 10 seconds
  And I enter price colour "#f2db0c" on the newemailcreate page
  And I pause for 10 seconds
  And I select price font on the newemailcreate page
  And I pause for 10 seconds
  And I select price characteristics on the newemailcreate page
  And I pause for 10 seconds
  And I select price size on the newemailcreate page
  And I pause for 10 seconds
  And I click the next button on the newemailcreate page
  And I pause for 10 seconds
 Then I should end up on the emailconfiguration page
  
Scenario: Verifying the "Advanced link" for  Email campaigns for New Smart Manager
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
  And I click on the "Show Advanced Settings" on the newemailcreate page
  And I pause for 5 seconds
  Then I should see "In advanced mode you will be able to use normal html/css to style these pieces of content." text on the newemailcreate page
  
Scenario: Verifying the error message if number of widgets is "-ve" value for Email campaigns
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
  Then I should end up on the emailconfiguration page
  And I enter number of widgets as "-1" on the emailconfiguration page
  And I click on the "visual-input" class on the emailconfiguration page
  And I pause for 10 seconds
 # And I enter stategy as "Best Seller By Revenue in Smart Category" on the emailconfiguration page
#  And I select strategy from the list with class "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY"
  And I select stategy as Best Seller By Revenue in Smart Category
  And I pause for 10 seconds
  When I click on the "Create mail campaign" button on the emailconfiguration page
  And I pause for 10 seconds
  Then I should see "Number of Items must be provided." error message on the emailconfiguration page
  
Scenario: Verifying the email campaign cancel button
   And I enter email campaign name as "AutoTestEmailCampaign1"
   And I pause for 10 seconds
   And I click on the cancel button on the newemailcreate page
   And I pause for 10 seconds
   Then I should end up on the newemail page
   
  
 Scenario: Verifying the expressions for Email campaigns
  And I enter email campaign name as "AutoTestEmailCampaign1"
  And I pause for 10 seconds
  And I click the next button on the newemailcreate page
  And I pause for 10 seconds
  Then I should end up on the emailconfiguration page
  And I click on the "visual-input" class on the emailconfiguration page
  And I pause for 10 seconds
  And I select stategy as Best Seller By Revenue in Smart Category
  And I pause for 10 seconds
  And I click on the "Expression" tab on the emailconfiguration page
  And I pause for 10 seconds
  And I select the hint as "Category" on the emailconfiguration page
  And I pause for 10 seconds
  And I select the expression as "equals to" on the emailconfiguration page
  And I pause for 10 seconds
  And I enter Category as "shirts" on the emailconfiguration page
  And I pause for 5 seconds
  And I click on the Hints tab on the emailconfiguration page
  And I pause for 10 seconds
#  And I select hint as "unique-category" on the emailconfiguration page
 # And I pause for 10 seconds
  
  
  

