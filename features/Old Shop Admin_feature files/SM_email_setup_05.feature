@smartmanager
Feature: SMART-manager

#
# email tests 
#

Background:
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Given I am on the smartmanager home page
 And I pause for 10 seconds
 And I select ctshirts from the sites list on the smartmanager home page
 When I click on the smartmanger email link 
 Then I should end up on the email page
 When I click on the create link on the email page
 Then I should end up on the emailcreate page

Scenario: Verifying the strategy "New Products(last 14 days)" in the debug
  And I enter email name as "AutoTestEmail1"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "New Products(last 14 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "NewProduct" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "New Products(last 30 days)" in the debug
  And I enter email name as "AutoTestEmail2"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "New Products(last 30 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "NewProduct" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "New Products(last 7 days)" in the debug
  And I enter email name as "AutoTestEmail3"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "New Products(last 7 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "NewProduct" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Seller By Revenue in Smart Category" in the debug
  And I enter email name as "AutoTestEmail4"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Seller By Revenue in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularRevenue" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Seller by Revenue per Product View (last 90 days)" in the debug
  And I enter email name as "AutoTestEmail5"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Seller by Revenue per Product View (last 90 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularRevenuePerView" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Seller by Revenue per Product View in Smart Category" in the debug
  And I enter email name as "AutoTestEmail6"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Seller by Revenue per Product View in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularRevenuePerView" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Sellers by Conversion (last 90 days)" in the debug
  And I enter email name as "AutoTestEmail7"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Conversion (last 90 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularConversion" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Sellers by Conversion in Smart Category" in the debug
  And I enter email name as "AutoTestEmail8"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Conversion in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularConversion" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Sellers by Revenue ( last 28 days)" in the debug
  And I enter email name as "AutoTestEmail9"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Revenue ( last 28 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "PopularRevenue" on the emaildebug page
   And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
  Scenario: Verifying the strategy "Customer viewed history" in the debug
  And I enter email name as "AutoTestEmail10"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Customer viewed history" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
 # Then I should see either "(LAST_WEEKS_POPULAR || Catalog)" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
 Scenario: Verifying the strategy "Emerging products (last 30 days) " in the debug
  And I enter email name as "AutoTestEmail11"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Emerging products (last 30 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
 # Then I should see either "(LAST_WEEKS_POPULAR || Catalog)" on the emaildebug page
  And I pause for 5 seconds
   When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
 Scenario: Verifying the strategy "Emerging products (last 30 days) in Smart Category" in the debug
   And I enter email name as "AutoTestEmail12"
   And I enter email content width as 200 and height as 140
   And  I select title color "blue"
   And I select price color "red"
   And I select background color "yellow"
   And I pause for 10 seconds
   When I drag and drop "Emerging products (last 30 days) in Smart Category" rule to the position slot on the emailcreate page
   And I pause for 5 seconds
   And copy position 1 configuration to position 2
   And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
   And I pause for 15 seconds
   When I click on the debug information link on the emailcreate page
   And I pause for 15 seconds
   Then I should read the algorithm in the emaildebug page
 # Then I should see either "(LAST_WEEKS_POPULAR || Catalog)" on the emaildebug page
   And I pause for 5 seconds
   When I go to the email page
   When I click on the first delete link on the email page
   And I confirm the delete email widget on the email page
   Then I should end up on the email page
    
  
Scenario: Verifying the strategy "Best Sellers by Units (last 7 days)" in the debug
  And I enter email name as "AutoTestEmail13"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Units (last 7 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should see "LAST_WEEKS_POPULAR" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
Scenario: Verifying the strategy "Best Sellers by Units in Smart Category" in the debug
  And I enter email name as "AutoTestEmail14"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Units in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should see "LAST_WEEKS_POPULAR" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
  Scenario: verifying email triggering functionality using "Best Sellers by Units in Smart Category"
  And I enter email name as "AutoTestEmail15"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Units in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "peertest@yahoo.com" 
  And I click on the trigger test email link on the emailcreate page
  And I pause for 15 seconds
  Then I should see "Email sent successfully" message on the emailcreate page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  

Scenario: Verifying the Error message for content width more than 1024
  And I enter email name as "AutoTestEmail16"
  And I enter email content width as 1035 and height as 140
  Then I should see "Error in html/css code?" error message on the emailcreate page
  
Scenario: Verifying the Error message for content height more than 1024
  And I enter email name as "AutoTestEmail17"
  And I enter email content width as 120 and height as 1400
  Then I should see "Error in html/css code?" error message on the emailcreate page
  
Scenario: Verifying the Error message for content both height and width more than 1024
  And I enter email name as "AutoTestEmail18"
  And I enter email content width as 1400 and height as 1400
  Then I should see "Error in html/css code?" error message on the emailcreate page

Scenario: verifying the error message for duplicate email widgets
  And I enter email name as "AutoTestEmail19"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Abandoned Basket" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I click on the save button on the emailcreate page
  Then I should end up on the email page
  When I click on the create link on the email page
  Then I should end up on the emailcreate page
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Abandoned Basket" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I click on the save button on the emailcreate page
  Then I should see "The name you have chosen is already in use." error message on the emailcreate page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page  
  
   
Scenario: Verifying no repeat recs
  And I enter email name as "AutoTestEmail20"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "New Products(last 14 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com"
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
#  Then I should see "NewProduct" on the emaildebug page
  Then I should see either "(NewProduct || Catalog)" on the emaildebug page
 # Then I should read the algorithm in the emaildebug page
  And I pause for 10 seconds
  And I read and compare the first two refcodes in the emaildebug page
  And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  And I read and compare the first two refcodes in the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
  Scenario: Verifying the strategy Best Sellers by Conversion (last 90 days),hints and expression in the debug
  And I enter email name as "AutoTestEmail21"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  And I uncheck the top-ups checkbox
  And I pause for 5 seconds
  When I drag and drop "Best Sellers by Conversion (last 90 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And I select the hint as "unique-category" on the emailcreate page
  And I pause for 5 seconds
  And I click on the expression on the emailcreate page
  And I pause for 2 seconds
  When I click on the add expression link on the emailcreate page
  And I pause for 2 seconds
  And I click on the "attribute" link on the emailcreate page
  And I pause for 5 seconds
  And I hover over on the Attributes link on the emailcreate page
  And I pause for 10 seconds
#  And I click on the Attributes on the emailcreate page
 # And I pause for 10 seconds
  And I select the Attributes as "clientcategory" on the emailcreate page
  And I pause for 10 seconds
  And I enter attribute as "shirts>business casual shirts" on the emailcreate page
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com"
  And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should read the algorithm,hint and expression on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
 
 Scenario: Verifying the strategy "New products from favourite categories(last 120 days)" in the debug
  And I enter email name as "AutoTestEmail22"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "New products from favourite categories(last 120 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
# Then I should see "New products from favourite categories(last 120 days)" on the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
  Scenario: Verifying the strategy "Abandoned Basket" in the debug
  And I enter email name as "AutoTestEmail23"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Abandoned Basket" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com"
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
  Scenario: Verifying the strategy "Cross-sell, previous purchases and views" in the debug
  And I enter email name as "AutoTestEmail24"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 10 seconds
  When I drag and drop "Cross-sell, previous purchases and views" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
   
Scenario: Verifying the strategy "Manual Select" in the debug
  And I enter email name as "AutoTestEmail25"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Manual Select" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
   Then I should read the algorithm in the emaildebug page
   And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "New products(last 120 days) in Smart Category" in the debug
  And I enter email name as "AutoTestEmail26"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "New products(last 120 days) in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
 Scenario: Verifying the strategy "Order Uplifter Bought Together" in the debug
  And I enter email name as "AutoTestEmail27"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Order Uplifter Bought Together" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Order Uplifter Popular Social" in the debug
  And I enter email name as "AutoTestEmail28"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Order Uplifter Popular Social" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
  Scenario: Verifying the strategy "Other customers popular social" in the debug
  And I enter email name as "AutoTestEmail29"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Other customers popular social" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
 Scenario: Verifying the strategy "Popular items from Favourite categories" in the debug
  And I enter email name as "AutoTestEmail30"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Popular items from Favourite categories" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
Scenario: Verifying the strategy "Recently Viewed" in the debug
  And I enter email name as "AutoTestEmail31"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Recently Viewed" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
Scenario: Verifying the strategy "Recommendations based on Abandoned Basket" in the debug
  And I enter email name as "AutoTestEmail32"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Recommendations based on Abandoned Basket" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
Scenario: Verifying the strategy "Registration teaser based on basket additions" in the debug
  And I enter email name as "AutoTestEmail33"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Registration teaser based on basket additions" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
Scenario: Verifying the strategy "Registration teaser based on popular view" in the debug
  And I enter email name as "AutoTestEmail34"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Registration teaser based on popular view" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
   
 Scenario: Verifying the strategy "Wishlist co-purchased" in the debug
  And I enter email name as "AutoTestEmail35"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Wishlist co-purchased" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
    
Scenario: Verifying the strategy "Wishlist highly viewed" in the debug
  And I enter email name as "AutoTestEmail36"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Wishlist highly viewed" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
  And I click on the preview email link on the emailcreate page
  And I pause for 15 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 15 seconds
  Then I should read the algorithm in the emaildebug page
  And I pause for 5 seconds
 # Then I should see "NewProduct" on the emaildebug page
  When I go to the email page
  When I click on the first delete link on the email page
  And I confirm the delete email widget on the email page
  Then I should end up on the email page
  
