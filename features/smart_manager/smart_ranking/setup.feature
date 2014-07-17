@smartmanager 
@smartranking
Feature: SMART Manager - Smart Ranking Setup Tests

#
# smartranking setup tests for new Smart-manager
#

Background:Users should be able to create new setup for smartranking
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
  
Scenario Outline: Users should be able to create new setup for smartranking pinning and boosting on new UI
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as <config_name> on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as <influence_name> on the rankingconfig page
  And I pause for 5 seconds
  #And I select influence type as "pin" on the rankingconfig page
   And I select influence type as <influence_type> on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as <influence_position> on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 10 seconds
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
  
	Examples: set1
    | config_name  					| influence_name 				      |influence_type  | influence_position|
    | "AutoRankingPinCampaign"      | "AutoRankingPinCampaign"            |"pin"           |  "1"|
    | "AutoRankingBoostCampaign"    | "AutoRankingBoostCampaign"          |"boost"         |  "100"|
   
 #Added in sprint 121  
 Scenario: Users should be able to create S-Ranking config for All Categories
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoAllCategoryCampaign" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the success message "Successfully saved your settings."
  And I pause for 5 seconds
  When I go to the adaptivelisting page
  And I pause for 5 seconds
  #When I Activate the last smartcontent setup on the adaptivelisting page
 #Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent adaptivelisting page
 And I pause for 5 seconds
 #Then I should end up on the smartcontent page 
  
  
  
  
  Scenario: Users should be able to add new rows in smart ranking config
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoRankingnewrowCampaignTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
 # And I enter influence name as "AutoRankingnewrowCampaign1" on the rankingconfig page
 When I enter first influence name as "AutoRankingnewrowCampaign1"
 # And I enter "second" influence name as "AutoRankingnewrowCampaign2" on the rankingconfig page
#  And I enter influence name as "AutoRankingnewrowCampaign1" on the rankingconfig page
  And I pause for 5 seconds
  And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
#  And I enter pin position as "2" on the rankingconfig page
 # And I pause for 2 seconds
#  And I select startdate as currentdate
#  And I pause for 5 seconds
#  And I select option with the value "pricerange"
#  And I pause for 5 seconds
#  And select operatoroption with the value "="
#  And I pause for 5 seconds
#  And I search for the category "cheap" on the rankingconfig page
#  And I pause for 5 seconds
#  And I select option with the value "category" in apply when condition
#  And I pause for 5 seconds
#  And select operatoroption with the value "=" in apply when condition
#  And I pause for 5 seconds
 # And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
#  And I pause for 5 seconds
#  And I click on span with the class "text-success unselectable"
#  And I pause for 5 seconds
#  And I enter "second" influence name as "AutoRankingnewrowCampaign2" on the rankingconfig page
#  And I pause for 2 seconds
#   And I select influence type "boost" on the rankingconfig page
#  And I pause for 2 second
#  And I enter boost percentage as "100" on the rankingconfig page
#  And I pause for 2 seconds
#  And I select startdate as currentdate
#  And I pause for 5 seconds
#  And I select option with the value "term"
#  And I pause for 5 seconds
#  And select operatoroption with the value "="
#  And I pause for 5 seconds
#  And I search for the category "shirt" on the rankingconfig page
 # And I pause for 5 seconds
#  And I select option with the value "category" in apply when condition
#  And I pause for 5 seconds
#  And select operatoroption with the value "=" in apply when condition
#  And I pause for 5 seconds
#  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
#  And I pause for 5 seconds
#  And I click on save ranking button on the rankingconfig page
#  And I pause for 5 seconds
  