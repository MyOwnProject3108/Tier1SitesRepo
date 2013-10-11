@smartmanager
Feature: SMART-manager

#
# Smart content setup deletion tests
#
 
Background:Users should be able to create new setup for smartcontent
 Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager home page
 And I pause for 20 seconds
 And I select "ctshirts" from the sites list on the smartmanager home page
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
  
Scenario: Users should be able to delete the existing smartcontent setup
#And I click on the last delete link on the smartcontent setup page
And I click on all the delete rules on the smartcontent setup page
Then I should end up on the smartcontent page
 
 