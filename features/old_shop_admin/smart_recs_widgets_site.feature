@old_shop_admin
Feature: Old Shop Admin Smart Recs Widget

#
# testing the automated widget on the demoshop site
# 
 
# Pre-requisite for this test is we should run smart_recs_widgets_setup.feature:49

 Scenario: Peerius Demo Shop product page tracks the widget correctly
  Given I am on the demoshop authentication page
  When I go to the product page
  Then it should be tracked as a product page
  And the first widget name should be "AutoTestWidget"
  
  
  
  
  
  

   
  
  
  
  
  
