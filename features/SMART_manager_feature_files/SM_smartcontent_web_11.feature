@smartmanager
Feature: SMART-manager

#
# testing the automated smartcontent on the demoshop site
# 
 
# Pre-requisite for this test is we should run smart_manager_smartcontent_setup_11.feature:15

 Scenario: Users should be able to see the peerius smartcontent on the DemoShop homepage
  Given I am on the demoshop authentication page
  When I go to the home page
  Then it should be tracked as a home page
  And I pause for 40 seconds
  And the debug info should show the SMART-content
  
  
  
  
  
  
  

   
  
  
  
  
  
