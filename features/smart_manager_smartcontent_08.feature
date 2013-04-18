@smartmanager
Feature: SMART-manager

#
# Smart content tests
#
 
Background:Users should be able to view the smart content on the site
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Given I am on the smartmanager home page
 
 Scenario: Users should be able to click on Smart-Content
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
