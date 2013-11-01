@smartmanager
Feature: SMART-manager

#
# Smart content setup tests
#
 
Background:Users should be able to create new setup for smartcontent
 Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 
Scenario: Users should be able to create new setup for smartcontent
Then I should end up on the orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on old interface link on the orders page
 And I pause for 5 seconds
 Then I should end up on the home page
  When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
  And I enter content name as "gender_rule" on the smartcontent location page
 And I pause for 10 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 10 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "u.gender="male"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "keyword_rule" on the smartcontent location page
 And I pause for 10 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 10 seconds
 And I select creative image as "LS2 - INACTIVE" on the smartcontent location page
 Then I enter "keyword="*shirts"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to create new setup for smartcontent
And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "organic_rule" on the smartcontent location page
 And I pause for 10 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 10 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "organic" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "ppc_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS2 - INACTIVE" on the smartcontent location page
 Then I enter "ppc" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "source_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "u.source="direct"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "city_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "city="London"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "smart_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "smart" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "visitor_new_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS2 - INACTIVE" on the smartcontent location page
 Then I enter "u.visitor="new"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "visitor_returning_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "u.visitor="returning"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "customer_new_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "u.customer="new"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "customer_returning_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS2 - INACTIVE" on the smartcontent location page
 Then I enter "u.customer="returning"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to create new setup for smartcontent
And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "direct_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "direct" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "default_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "default" in the criteria1 position on the smartcontent location page
  And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "tags_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "tags" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
  And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to create new setup for smartcontent
And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "country_GB_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS2 - INACTIVE" on the smartcontent location page
 Then I enter "countrycode="GB"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
  And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to create new setup for smartcontent
And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "country_US_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS3 - INACTIVE" on the smartcontent location page
 Then I enter "countrycode="US"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
  And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to create new setup for smartcontent
 And I select "ctshirts" from the sites list on the smartmanager login page
 And I pause for 5 seconds
 When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
 And I pause for 5 seconds
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "country_FR_rule" on the smartcontent location page
 And I pause for 5 seconds
 And I select content location as Home_JSON_IP
 Then I click on the Add content button on the smartcontent location page
 And I pause for 5 seconds
 And I select creative image as "LS1 - INACTIVE" on the smartcontent location page
 Then I enter "countrycode="FR"" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
  And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 

