@smartmanager
Feature: SMART-manager

#
# Smart content setup tests
#
 
Background:Users should be able to create new setup for smartcontent
 Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager home page
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to create new setup for smartcontent
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "AutoTestSmartContent" on the smartcontent location page
 And I select content location as home page (center)
 Then I click on the Add content button on the smartcontent location page
 And I select creative image as "AutoTestCreative" on the smartcontent location page
 Then I enter "tags" in the "criteria1" position on the smartcontent location page

 
 
 
