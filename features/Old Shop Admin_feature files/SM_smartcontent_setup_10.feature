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
 Then I enter "tags" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to edit the existing smartcontent setup
When I click on the setup link on the smartcontent page
Then I should end up on the smartcontent setup page 
And I click on the last edit link on the smartcontent setup page
Then I should end up on the smartcontent location page
And I enter content name as "AutoTestSmartContentEdit" on the smartcontent location page
Then I click on the delete content button on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to delete the existing smartcontent setup
When I click on the setup link on the smartcontent page
Then I should end up on the smartcontent setup page 
And I click on the last delete link on the smartcontent setup page
Then I should end up on the smartcontent page

Scenario: Users should not be able to setup multiple smartcontents with the same name
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "AutoTestSmartContent" on the smartcontent location page
 And I select content location as home page (center)
 And I click on the save button on the smartcontent location page
 And I pause for 5 seconds
 Then I should see "Smart Content with the same name already exists." message on the smartcontent location page
 
 Scenario: Users should not be able to setup smartcontent without placement
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "AutoTestSmartContent1" on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should see "Please provide a Placement." message on the smartcontent location page