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
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger content link
 And I pause for 5 seconds
 Then I should end up on the creativelisting page
  And I pause for 5 seconds
  
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "visitor_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.visitor"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "new" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "gender_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.gender"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "male" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "keyword_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "keyword"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "*shirts" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "organic_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "organic"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "ppc_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "ppc"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "source_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.source"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "direct" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "city_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "city"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "direct" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "ppc_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "ppc"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "smart_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "ppc"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "visitor_returning_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.visitor"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "returning" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "customer_new_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.customer"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "new" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "customer_returning_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.customer"
  And I pause for 5 seconds
  And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "returning" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
  Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "direct_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "direct"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
  And I pause for 5 seconds
  
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
  Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "default_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "default"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
  And I pause for 5 seconds
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "tags_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "tags"
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
  Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "country_GB_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "countrycode"
  And I pause for 5 seconds
   And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "GB" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "country_FR_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS2 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "countrycode"
  And I pause for 5 seconds
   And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "FR" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Scenario: Users should be able to create new setup for smartcontent on new UI
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "country_US_rule1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "Home_JSON_IP" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "countrycode"
  And I pause for 5 seconds
   And select operatoroption with the value "="
  And I pause for 5 seconds
  And I enter rule as "US" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on the textarea with class "input-medium the_expression span11 advanced_expression"
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as "LS3 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 10 seconds
  And I select "default" as second rule on the adaptivecontent page
 And I click on second "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 
#Scenario: Users should be able to edit the existing smartcontent setup on new UI
 # When I click on the last "edit" link on the creativelisting page
  #Then I should end up on the smartcontent location page
  #And I pause for 5 seconds
  #Then I should end up on the adaptivecontent page

  
  
  
  
  
  
  

  
  
  
  
 