@smartmanager
Feature: New SMART-manager content

#
# smartcontent validation tests for new Smart-manager
#

Background:Validating the error messages for S-Content
Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger content link
 And I pause for 5 seconds
 Then I should end up on the creativelisting page
  And I pause for 5 seconds

 Scenario: User should be able to see an error message for empty setup name
 When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
  And I pause for 5 seconds
  Then I should see the error message "Please provide a name"
  
Scenario: User should be able to see an error message for empty creative placement
 When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "AutoTestSetup" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "Womenswear" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative size as "default" on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.visitor"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "new" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 Then I should see the error message "Please provide a Placement"
 
 Scenario: User should be able to see an error message for empty creative size
 When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "AutoTestSetup" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "Womenswear" on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.visitor"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "new" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 Then I should see the error message "You must provide a value for 'creative size'"
 
Scenario: User should be able to see an error message for empty criteria
 When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "AutoTestSetup" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "Womenswear" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative size as "default" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 Then I should see the error message "Criteria cannot be empty"
  
