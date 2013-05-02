@smartmanager
Feature: SMART-manager

#
# Smart content tests
#
 
Background:Users should be able to duplicate/edit or delete the smaart content creatives
 Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager home page
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to duplicate Smart-Content creative
 When I click on the last duplicate link on the smartcontent page
 Then I should end up on the smartcontent page 
 
Scenario: Users should be able to delete on Smart-Content creative
 When I click on the last delete link on the smartcontent page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to edit on Smart-Content creative
 When I click on the last edit link on the smartcontent page
 Then I should end up on the smartcontent creative page
 
 