@smartmanager
Feature: New SMART-manager SMART Content Setup for Rules

#
# smartcontent setup tests for new Smart-manager
#

Background:Users should be able to create new setup for smartcontent
Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger content link
 And I pause for 5 seconds
 Then I should end up on the creativelisting page
  And I pause for 5 seconds
  
Scenario Outline: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as <setup_name> on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as <placement_name> on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as <creative_name1> on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value <user_attribute>
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as <rule1> on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as <creative_name2>  on the adaptivecontent page
  And I pause for 10 seconds
  And I select <rule2> as second rule on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Examples: set1
    | setup_name  		             | placement_name		     |creative_name1  | user_attribute  | rule1      | creative_name2  | rule2    |
    | "visitor_rule"                 | "Home_JSON_IP"            |"LS1 - INACTIVE"| "u.visitor"     | "new"      | "LS2 - INACTIVE"| "default"|
	| "visitor_returning_rule"       | "Home_JSON_IP"            |"LS2 - INACTIVE"| "u.visitor"     | "returning"| "LS3 - INACTIVE"| "default"|
	| "customer_rule"                | "Home_JSON_IP"            |"LS1 - INACTIVE"| "u.customer"    | "new"      | "LS3 - INACTIVE"| "default"|
	| "customer_returning_rule"      | "Home_JSON_IP"            |"LS2 - INACTIVE"| "u.customer"    | "returning"| "LS1 - INACTIVE"| "default"|
	| "gender_rule"                  | "Home_JSON_IP"            |"LS3 - INACTIVE"| "u.gender"      | "male"     | "LS2 - INACTIVE"| "default"|
	| "keyword_rule"                 | "Home_JSON_IP"            |"LS1 - INACTIVE"| "keyword"       | "*shirts"  | "LS2 - INACTIVE"| "default"|
	| "source_rule"                  | "Home_JSON_IP"            |"LS2 - INACTIVE"| "u.source"      | "direct"   | "LS3 - INACTIVE"| "default"|
	| "country_GB_rule"              | "Home_JSON_IP"            |"LS2 - INACTIVE"| "countrycode"   | "GB"       | "LS1 - INACTIVE"| "default"|
	| "country_FR_rule"              | "Home_JSON_IP"            |"LS1 - INACTIVE"| "countrycode"   | "FR"       | "LS3 - INACTIVE"| "default"|
	| "country_US_rule"              | "Home_JSON_IP"            |"LS3 - INACTIVE"| "countrycode"   | "US"       | "LS2 - INACTIVE"| "default"|
	

Scenario Outline: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as <setup_name> on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as <placement_name> on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as <creative_name1> on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value <keywords_attribute>
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as <creative_name2>  on the adaptivecontent page
  And I pause for 10 seconds
  And I select <rule2> as second rule on the adaptivecontent page
  And I pause for 5 seconds 
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Examples: set2
    | setup_name  		                | placement_name		     |creative_name1    | keywords_attribute           | creative_name2             | rule2    |
    | "ppc_rule"                        | "Home_JSON_IP"            |"LS1 - INACTIVE"   | "ppc"                        | "LS2 - INACTIVE"           | "default"|
	| "source_rule"                     | "Home_JSON_IP"            |"LS3 - INACTIVE"   | "direct"                     | "LS1 - INACTIVE"           | "default"|
	| "smart_rule"                      | "Home_JSON_IP"            |"LS2 - INACTIVE"   | "smart"                      | "LS3 - INACTIVE"           | "default"|
	| "direct_rule"                     | "Home_JSON_IP"            |"LS3 - INACTIVE"   | "direct"                     | "LS1 - INACTIVE"           | "default"|
	| "tags_rule"                       | "Home_JSON_IP"            |"LS2 - INACTIVE"   | "tags"                       | "LS3 - INACTIVE"           | "default"|
	| "purchasehistorybycategory_rule"  | "Home_JSON_IP"            |"LS1 - INACTIVE"   | "purchasehistorybycategory"  | "LS2 - INACTIVE"           | "default"|
	| "purchasehistorybyattribute_rule" | "Home_JSON_IP"            |"LS3 - INACTIVE"   | "purchasehistorybyattribute" | "LS2 - INACTIVE"           | "default"|
	
   
 

 
