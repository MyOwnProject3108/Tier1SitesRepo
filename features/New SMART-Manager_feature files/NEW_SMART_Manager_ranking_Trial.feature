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
  
Scenario Outline:: Users should be able to create new setup for smartranking pinning on new UI
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
  
	Examples: set1
    | config_name  | influence_name |influence_type | influence_position|
    | "Test1"      | "TestA"        |"pin"          |  "1"|
	| "Test2"      | "TestB"        |"boost"        |  "100"|

 Scenario Outline:: Users should be able to see an error message for empty config name
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
  Then I should see "Name cannot be empty" on the rankingconfig page
  Examples: set1
    | config_name  | influence_name |influence_type | influence_position|
    | ""           | "TestA"        |"pin"          |  "1"|
	
Scenario Outline:: Users should be able to see an error message if startdate euals to enddate
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
  Then I should see "end date should be after start date"
  Examples: set1
    | config_name  | influence_name |influence_type | influence_position|
    | "AutoTest"   | "TestA"        |"pin"          |  "1"|
	
Scenario Outline:: Users should be able to see an error message if categories is empty
  When I click on span with the text "SMART-ranking Configuration" on the adaptivelisting page
  And I pause for 5 seconds
  Then I should end up on the rankingconfig page
  And I pause for 5 seconds
  And I enter ranking campaign name as <config_name> on the rankingconfig page
  And I pause for 2 seconds
 # And I click on Add all categories checkbox on the rankingconfig page
#  And I pause for 2 seconds
  And I enter influence name as <influence_name> on the rankingconfig page
  And I pause for 5 seconds
  #And I select influence type as "pin" on the rankingconfig page
   And I select influence type as <influence_type> on the rankingconfig page
  And I pause for 2 seconds
  And I enter pin position as <influence_position> on the rankingconfig page
  And I pause for 2 seconds
  And I select startdate as currentdate
  And I pause for 5 seconds
#  And I select enddate as currentdate
 # And I pause for 5 seconds
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
  Then I should see "Please specify categories"
  Examples: set1
    | config_name  | influence_name |influence_type | influence_position|
    | "AutoTest"   | "TestA"        |"pin"          |  "1"|
	
	