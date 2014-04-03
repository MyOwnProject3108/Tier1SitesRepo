@smartmanager
Feature: New SMART-manager

#
# smartranking validation tests for new Smart-manager
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

 Scenario Outline: User should be able to see an error message for empty config name
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "TestA" on the rankingconfig page
  And I pause for 5 seconds
  #And I select influence type as "pin" on the rankingconfig page
   And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "1" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
 And I select option with the value "pricerange"
  And select operatoroption with the value "="
 And I pause for 5 seconds
  And I search for the category "cheap" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the error message "Name cannot be empty"

  
Scenario: User should be able to see an error message if startdate equals to enddate
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "TestA" on the rankingconfig page
  And I pause for 5 seconds
   And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "1" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
  And I select enddate as currentdate
  And I pause for 5 seconds
 And I select option with the value "pricerange"
  And select operatoroption with the value "="
 And I pause for 5 seconds
  And I search for the category "cheap" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
 Then I should see the error message "end date should be after start date"

	
Scenario: User should be able to see an error message if categories is empty
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
 # And I click on Add all categories checkbox on the rankingconfig page
#  And I pause for 2 seconds
  And I enter influence name as "TestA" on the rankingconfig page
  And I pause for 5 seconds
   And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "1" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
 And I select option with the value "pricerange"
  And select operatoroption with the value "="
 And I pause for 5 seconds
  And I search for the category "cheap" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the error message "Please specify categories"
	
Scenario: User should be able to see an error message if influence title is empty
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "" on the rankingconfig page
  And I pause for 5 seconds
  #And I select influence type as "pin" on the rankingconfig page
   And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "2" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
 And I select option with the value "pricerange"
  And select operatoroption with the value "="
 And I pause for 5 seconds
  And I search for the category "cheap" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the error message "Influence name is mandatory"
  
  Scenario: User should be able to see an error message if influence value is empty
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
 And I pause for 2 seconds
  And I enter influence name as "TestA" on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the error message "Please provide a value for influence [TestA]"
  
  Scenario: User should be able to see an error message if Criteria is empty
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I enter influence name as "TestA" on the rankingconfig page
  And I pause for 5 seconds
   And I select influence type as "pin" on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as "1" on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should see the error message "Please provide criteria for influence [TestA]"
  
  #Added in sprint 121
  Scenario: User should be able to see an error message for duplicate campaigns
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  When I go to the adaptivelisting page
  And I pause for 5 seconds
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as "AutoTest" on the rankingconfig page
  And I pause for 2 seconds
  And I click on Add all categories checkbox on the rankingconfig page
  And I pause for 2 seconds
  And I click on save ranking button on the rankingconfig page
  Then I should see the error message "There is already a campaign with name of [AutoTest]"
  
Scenario Outline: User should be able to see an error message if startdate is empty
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
  And I select influence type as <influence_type> on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as <influence_position> on the rankingconfig page
  And I pause for 5 seconds
 And I select option with the value "pricerange"
 And I pause for 2 seconds
  And select operatoroption with the value "="
 And I pause for 5 seconds
  And I search for the category "cheap" on the rankingconfig page
  And I pause for 5 seconds
  And I select option with the value "category" in apply when condition
  And I pause for 5 seconds
  And select operatoroption with the value "=" in apply when condition
  And I pause for 5 seconds
  And I search for the category "Clothing>Mens>Tops" in apply when condition on the rankingconfig page
  And I pause for 5 seconds
  And I click on save ranking button on the rankingconfig page
  And I pause for 5 seconds
 Then I should see the error message "start date is invalid for influence [AutoTestPin]"
 Examples: set1
    | config_name  	  | influence_name 		|influence_type  | influence_position|
    | "AutoTest"      | "AutoTestPin"       |"pin"           |  "1"|
	