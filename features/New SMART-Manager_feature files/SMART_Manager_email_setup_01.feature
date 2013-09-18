@smartmanager
Feature: New SMART-manager

#
# email tests for new Smart-manager
#

Scenario:
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager home page
 And I pause for 10 seconds
 And I select ctshirts from the sites list on the smartmanager home page
 And I click on the New and Shiny Smart Manager link on the smartmanager home page
 Then I should end up on the orders page
 When I click on the smartmanger email link
 Then I should end up on the email page
 #When I click on the create link on the email page
 #Then I should end up on the emailcreate page

