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
 When I click on the create a new campaign link on the merchoverview page
 Then I should end up on the newmerchandisingcreate page
 
Scenario: Specifying the details for a new merch campaign
Given I am on the smartmanager Newmerchandisingcreate page
  Then I enter merch campaign name as "AutoTestMerchCampaign1"
  Then I enter merch campaign display title as "AutoTestMerchCampaign1"
  Then I select location from the Location select list on the Newmerchandisingcreate page
#  NEED TO ADD STEPS TO CHECK IF A CAMPAIGN WITH SAME NAME EXISTS: IF YES THEN CHANGE THE NAME ELSE CLICK ON NEXT BUTTON
 Then I click the next button on the Newmerchandisingcreate page
 Then I should end up on the Masterruleconfig page
 And I click on Click to add master rules link on the Masterruleconfig page
 And I pause for 5 seconds
 And I select expression option with the value "p.saleprice" on the Masterruleconfig page
 And I pause for 5 seconds
 And select an expoperatoroption with the value "<=" on the Masterruleconfig page
 And I pause for 5 seconds
 And I enter merch rule as "20" on the Masterruleconfig page
  And I pause for 5 seconds
 Then I click the next button on the Masterruleconfig page
 Then I should end up on the Recrulesconfig page
 Then I click the edit rule button on the Recrulesconfig page
 And I pause for 10 seconds
 And I select option with the value "r.gender" on the Recrulesconfig page
 And I pause for 5 seconds
 And select an expoperatoroption with the value "=" on the Recrulesconfig page
 And I pause for 5 seconds
 And I enter merch rule as "female" on the Recrulesconfig page
  And I pause for 5 seconds
  And I click on the textarea with class "advanced_expression span9"
  And I pause for 5 seconds
  And I click on Save Setup button on the Recrulesconfig page
 And I pause for 5 seconds

