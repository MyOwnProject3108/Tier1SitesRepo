@smartmanager
Feature: New SMART-manager

#
# Merchandising tests for new Smart-manager
#

Scenario:
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager home page
 And I pause for 10 seconds
 And I select "mandco" from the sites list on the smartmanager home page
 And I click on the New and Shiny Smart Manager link on the smartmanager home page
 Then I should end up on the orders page
 When I click on the smartmanger merchandising link
 Then I should end up on the merchoverview page
 When I click on the create a new campaign link on the merchoverview page
 Then I should end up on the newmerchandisingcreate page
 
 Scenario: Verifying the styling for  
  And I enter merch campaign name as "AutoTestEmailCampaign1"
