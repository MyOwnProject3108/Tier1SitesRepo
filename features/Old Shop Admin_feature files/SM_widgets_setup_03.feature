@smartmanager
Feature: SMART-manager

#
# widget tests 
#
 
Background:
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Then I should end up on the home page
  When I click on the smartmanger config link on the home page
  Then I should end up on the administration page
  When I click on the list of available widgets on the administration page
  Then I should end up on the widgets page
  
Scenario: Users should be able to save widgets
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
  And I click edit link on the widgets page
  Then I should end up on the createwidget page
  And I enter the widget name as "AutoTestWidgetEdit"
  And I enter the widget alias as "AutoTestWidgetEditAlias"
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
  
  
Scenario: Users should be able to duplicate the available widgets
  And I click duplicate link on the widgets page
  Then I should end up on the widgets page
  When I click on the save widget button
  Then I should end up on the configuration page
   
#Plz note this scenario should be run only after you've run the create/duplicate widget scenario (scenario :119) otherwise it'll remove the existing widgets#### 
Scenario: Users should be able to delete duplicate widgets
  And I click delete link on the widgets page
  Then I should end up on the widgets page
  When I click on the save widget button
  Then I should end up on the configuration page
 
  
Scenario: Users should be able to view the widgets Menu
  When I click on the menu link on the widgets page
  Then I should end up on the administration page
  
  
  
  
  
  
  

   
  
  
  
  
  