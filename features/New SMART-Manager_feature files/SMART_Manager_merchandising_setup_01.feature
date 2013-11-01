@smartmanager
Feature: New SMART-manager

#
# Merchandising tests for new Smart-manager
#

Background:
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
 
Scenario: Specifying the details for a new merch campaign
Given I am on the smartmanager Newmerchandisingcreate page
  Then I enter merch campaign name as "AutoTestMerchCampaign1"
  Then I enter merch campaign display title as "AutoTestMerchCampaign1"
  Then I select location from the Location select list on the Newmerchandisingcreate page
  
#  NEED TO ADD STEPS TO CHECK IF A CAMPAIGN WITH SAME NAME EXISTS: IF YES THEN CHANGE THE NAME ELSE CLICK ON NEXT BUTTON
#  Then I click the save campaign button on the Newmerchandisingcreate page
#  Then I should end up on Newmerchandisingcreate page.
    
 Then I click the next button on the Newmerchandisingcreate page
 Then I should end up on the Masterruleconfig page
 Then I click the next button on the Masterruleconfig page
 Then I should end up on the Recrulesconfig page
 Then I click the edit rule button on the Recrulesconfig page
 And I pause for 10 seconds
  And I click on "exp_left_hand" class on the Recrulesconfig page
  And I pause for 10 seconds
  And I select the hint as "r.gender" on the Recrulesconfig page
 # And I select option "Colour" on the Recrulesconfig page
 # And I pause for 10 seconds
 #And I click on the class "exp_left_hand" on Recrulesconfig page
  #Then I click on class exp_left_hand with text "Please Select" on Recrulesconfig page
 And I pause for 10 seconds
 Then I select attribute as "sale price" on Recrulesconfig page
 