@smartmanager
Feature: New SMART-manager

#
# smartcontent setup tests for new Smart-manager
#

Background:Users should be able to create new setup for smartcontent
Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "demostoredev" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger ranking link
 And I pause for 5 seconds
 Then I should end up on the adaptivelisting page
  And I pause for 5 seconds
  
Scenario: Users should be able to create new setup for smartranking pinning on new UI
 # When I click on the link Create a new campaign on the adaptivelisting page
 #When I click on span with the text "SMART-ranking Configuration"
 When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoRankingCampaign" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "AutoRankingCampaign" on the rankingconfig page
  And I pause for 2 seconds
  #And I click on "pin" radio button on the rankingconfig page
  And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "2" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
  And I select option with the value "pricerange"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I search for the category "expensive" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Electricals>Cameras" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  

 Scenario: Users should be able to create new setup for smartranking pinning on new UI
 When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoRankingCampaign" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "AutoRankingCampaign" on the rankingconfig page
  And I pause for 2 seconds
   And I select influence type "boost" on the rankingconfig page
  And I pause for 2 second
  And I enter boost percentage as "100%" on the rankingconfig page
  And I pause for 2 seconds