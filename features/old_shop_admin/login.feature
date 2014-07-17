@old_shop_admin
Feature: Old Shop Admin Login

#
# login tests
#

Background:
Given I am on the smartmanager login page

Scenario: Users should be able to login to SMART-manager
  And I login as "fsultana" using password "4n424yq4n3w"
 # Then I should end up on the home page
 Then I should end up on the orders page
  
Scenario: Users should be able to login to SMART-manager
 And I login as "fsultana" using password "abc"
  Then I should see "Login Failed" error message

Scenario: Users should be able to logout of SMART-manager
 And I login as "fsultana" using password "4n424yq4n3w"
 Then I should end up on the orders page
 And I hover over on Account button
 And I click logout on the orders page
 Then  I should end up on the first login page
