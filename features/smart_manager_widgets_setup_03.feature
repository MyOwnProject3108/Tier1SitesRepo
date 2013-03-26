@smartmanager
Feature: SMART-manager

#
# widget tests 
#
 
Background:
Given I am on the smartmanager login page
And I login as "fsultana" using password "4n424yq4n3w"
Then I should end up on the home page
 
Scenario: Users should be able to view widgets
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
  When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
  
 
Scenario: Users should be able to save widgets
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
  When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
  #When I click on the new widget button
  When I click on the new button on the widgets page
  Then I should end up on the createwidget page
  And I enter the widget name as "AutoTestWidget"
  And I enter the widget alias as "AutoTestWidgetAlias"
  And I select the widget algorithm as "Product Catalog"
  And I select the html template as "product-bottom.html"
  And I select the css template as "product-bottom.css"
  And I enter maximum recs visible as 3
  And I select the widget injection point as "product bottom"
  And I submit the widget form
  Then I should end up on the widgets page
  When I click on the save widget button
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." message
  When I click on the back widget button
  Then I should end up on the administration page
  
 Scenario: Users shouldn't be able to save widgets with special characters
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
  When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
  #When I click on the new widget button
  When I click on the new button on the widgets page
  Then I should end up on the createwidget page
  And I enter the widget name as "Auto_TestWidget"
  And I enter the widget alias as "Auto_TestWidgetAlias"
  And I select the widget algorithm as "Product Catalog"
  And I select the html template as "product-bottom.html"
  And I select the css template as "product-bottom.css"
  And I enter maximum recs visible as 3
  And I select the widget injection point as "product bottom"
  And I submit the widget form
  Then I should see "name should be alpha numeric and can contain spaces." meesgae
  
  
Scenario: Users should be able to select saved widgets on the decide per page
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
  When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
  When I click on the new button on the widgets page
  Then I should end up on the createwidget page
  And I enter the widget name as "AutoTestWidget"
  And I enter the widget alias as "AutoTestWidgetAlias"
  And I select the widget algorithm as "Product Catalog"
  And I select the html template as "product-bottom.html"
  And I select the css template as "product-bottom.css"
  And I enter maximum recs visible as 3
  And I select the widget injection point as "product bottom"
  And I submit the widget form
  Then I should end up on the widgets page
  When I click on the save widget button
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." message
  When I click on the back widget button
  Then I should end up on the administration page
   When I click on the decide widgets per page on the administration page
  Then I should end up on the per page
  And I select the widget as "AutoTestWidget"
  And I submit the widget form
  Then I should end up on the administration page
  When I click on the save widget button
  Then I should end up on the configuration page
  Then I should see "All changes are saved and activated. Online users can view the changes." message
  When I click on the back widget button
  Then I should end up on the administration page
  
  
  
Scenario: Users should be able to edit widgets
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
   When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
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
  Then I should see "All changes are saved and activated. Online users can view the changes." message
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
  
 Scenario: Peerius Demo Shop product page tracks the widget correctly
  Given I am on the demoshop authentication page
  When I go to the product page
  Then it should be tracked as a product page
  And the first widget name should be "AutoTestWidgetEdit"
  
  
  
  
  
  

   
  
  
  
  
  
