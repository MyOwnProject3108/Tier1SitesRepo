@smartmanager
Feature: SMART-manager

#
# widget tests
#
  
Scenario: Users should be able to view widgets
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  Then I should end up on the widgets page
  
 
Scenario: Users should be able to save widgets
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click new
  Then I should end up on the createwidget page
  And I enter name as "AutoTestWidget"
  And I enter alias as "AutoTestWidgetAlias"
  And I select algorithm as "Product Catalog"
  And I select html as "product-bottom.html"
  And I select css as "product-bottom.css"
  And I enter max recs as 3
  And I select injection point as "product bottom"
  And I click try
  And I click save
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." messgae
  And I click back
  Then I should end up on the administration page
  
 Scenario: Users shouldn't be able to save widgets with special characters
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click new
  Then I should end up on the createwidget page
  And I enter name as "Auto_TestWidget"
  And I enter alias as "Auto_TestWidgetAlias"
  And I select algorithm as "Product Catalog"
  And I select html as "product-bottom.html"
  And I select css as "product-bottom.css"
  And I enter max recs as 3
  And I select injection point as "product bottom"
  And I click try
  Then I should see "name should be alpha numeric and can contain spaces." meesgae
  
  
Scenario: Users should be able to select saved widgets on the decide per page
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click new
  Then I should end up on the createwidget page
  And I enter name as "AutoTestWidget"
  And I enter alias as "AutoTestWidgetAlias"
  And I select algorithm as "Product Catalog"
  And I select html as "product-bottom.html"
  And I select css as "product-bottom.css"
  And I enter max recs as 3
  And I select injection point as "product bottom"
  And I click try
  And I click save
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." messgae
  And I click back
  Then I should end up on the administration page
  And I click decide widgets per page
  Then I should end up on the per page
  And I select "AutoTestWidget"
  And I click try
  And I click save
  Then I should end up on the configuration page
  And I click back
  Then I should end up on the administration page
  
  
Scenario: Users should be able to edit widgets
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click edit
  Then I should end up on the createwidget page
  And I enter name as "AutoTestWidgetEdit"
  And I enter alias as "AutoTestWidgetEditAlias"
  And I select algorithm as "Product Catalog"
  And I select html as "product-bottom.html"
  And I select css as "product-bottom.css"
  And I enter max recs as 3
  And I select injection point as "product bottom"
  And I click try
  And I click save
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." messgae
  And I click back
  Then I should end up on the administration page
  
  
Scenario: Users should be able to duplicate the available widgets
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click duplicate
  When I click save
  Then I should end up on the configuration page
  
 
#Plz note this scenario should be run only after you've run the duplicate widget scenario (scenario :112) otherwise it'll remove the existing widgets#### 
Scenario: Users should be able to delete duplicate widgets
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click delete
  When I click save
  Then I should end up on the configuration page
  
  
Scenario: Users should be able to view the widgets Menu
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click list of available widgets
  And I click menu
  Then I should end up on the configuration page
  
  

   
  
  
  
  
  
