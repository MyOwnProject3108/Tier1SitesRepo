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
  And I select first creative size as <creative_size1> on the adaptivecontent page
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
  And I select second creative size as <creative_size2> on the adaptivecontent page
  And I pause for 5 seconds
  And I select <rule2> as second rule on the adaptivecontent page
  And I pause for 5 seconds
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 Then I should see the success message "Successfully saved this changes."
 
 Examples: set1
    | setup_name  		             | placement_name		     |creative_name1                              |creative_size1        | user_attribute           | rule1              | creative_name2                        |creative_size2      | rule2    |
    | "visitor_rule"                 | "Home_JSON_IP"            |"Womenswear"                                |"default"             |"u.visitor"               | "new"              | "Casual - Trousers"                   |"default"           | "default"|
	| "visitor_returning_rule"       | "Home_JSON_IP"            |"Suits"                                     |"default"             |"u.visitor"               | "returning"        | "Shirts - Casual Slim Fit - 4for100"  |"default"           | "default"|
	| "customer_rule"                | "Home_JSON_IP"            |"Casual - Trousers"                         |"default"             |"u.customer"              | "new"              | "Womenswear"                          |"default"           | "default"|
	| "customer_returning_rule"      | "Home_JSON_IP"            |"Suits"                                     |"default"             |"u.customer"              | "returning"        | "Casual - Trousers"                   |"default"           | "default"|
	| "gender_rule"                  | "Home_JSON_IP"            |"Casual - Trousers"                         |"default"             |"u.gender"                | "male"             | "Casual - Trousers"                   |"default"           | "default"|
	| "keyword_rule"                 | "Home_JSON_IP"            |"Shirts - Casual Slim Fit - 4for100"        |"default"             |"keyword"                 | "*shirts"          | "Womenswear"                          |"default"           | "default"|
	| "source_rule"                  | "Home_JSON_IP"            |"Casual - Trousers"                         |"default"             |"u.source"                | "direct"           | "Womenswear"                          |"default"           | "default"|
	| "country_GB_rule"              | "Home_JSON_IP"            |"Womenswear"                                |"default"             |"countrycode"             | "GB"               | "Suits"                               |"default"           | "default"|
	| "country_FR_rule"              | "Home_JSON_IP"            |"Shirts - Casual Slim Fit - 4for100"        |"default"             |"countrycode"             | "FR"               | "Womenswear"                          |"default"           | "default"|
	| "country_US_rule"              | "Home_JSON_IP"            |"Casual - Trousers"                         |"default"             |"countrycode"             | "US"               | "Womenswear"                          |"default"           | "default"|
	

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
  And I select first creative size as <creative_size1> on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value <keywords_attribute>
  And I pause for 5 seconds
  And I click on  Add a new row on the adaptivecontent page
  And I pause for 5 seconds
  And I select second creative as <creative_name2>  on the adaptivecontent page
  And I pause for 10 seconds
  And I select second creative size as <creative_size2> on the adaptivecontent page
  And I pause for 5 seconds
  And I select <rule2> as second rule on the adaptivecontent page
  And I pause for 5 seconds 
  And I click on Save Setup button on the adaptivecontent page
 And I pause for 5 seconds
 
 Examples: set2
    | setup_name  		                | placement_name		     |creative_name1                         |creative_size1        | keywords_attribute           | creative_name2                           |creative_size2       | rule2    |
    | "ppc_rule"                        | "Home_JSON_IP"             |"Womenswear"                           |"default"             | "ppc"                        | "Suits"                                  |"default"            | "default"|
	| "source_rule"                     | "Home_JSON_IP"             |"Casual - Trousers"                    |"default"             | "direct"                     | "Shirts - Casual Slim Fit - 4for100"     |"default"            | "default"|
	| "smart_rule"                      | "Home_JSON_IP"             |"Womenswear"                           |"default"             | "smart"                      | "Casual - Trousers"                      |"default"            | "default"|
	| "direct_rule"                     | "Home_JSON_IP"             |"Suits"                                |"default"             | "direct"                     | "Womenswear"                             |"default"            | "default"|
	| "tags_rule"                       | "Home_JSON_IP"             |"Shirts - Casual Slim Fit - 4for100"   |"default"             | "tags"                       | "Womenswear"                             |"default"            | "default"|
	| "purchasehistorybycategory_rule"  | "Home_JSON_IP"             |"Casual - Trousers"                    |"default"             | "purchasehistorybycategory"  | "Suits"                                  |"default"            | "default"|
	| "purchasehistorybyattribute_rule" | "Home_JSON_IP"             |"Shirts - Casual Slim Fit - 4for100"   |"default"             | "purchasehistorybyattribute" | "Womenswear"                             |"default"            | "default"|
	
   
 

 
