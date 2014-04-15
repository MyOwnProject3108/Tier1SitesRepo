@smartmanager
Feature: New SMART-manager

#
# Merchandising tests for new Smart-manager
#

Background:
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "mandco" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger merchandising link
 Then I should end up on the merchoverview page
 
#Scenario: User should be able to see an error message for empty campaign name
 When I click on the create a new campaign link on the merchoverview page
 Then I should end up on the newmerchandisingcreate page
 Then I enter merch campaign display title as "AutoTestMerchCampaign1"
 Then I select location from the Location select list on the Newmerchandisingcreate page
 Then I click on Save Campaign button on the Newmerchandisingcreate page
 
