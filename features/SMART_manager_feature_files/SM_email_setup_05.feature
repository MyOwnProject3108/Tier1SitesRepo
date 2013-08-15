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
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "New Products(last 14 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "New Products(last 14 days)" on the emaildebug page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "New Products(last 30 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "New Products(last 30 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "sfdgfg" on the emaildebug page
  
Scenario: Verifying the strategy "New Products(last 7 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "New Products(last 7 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "New Products(last 7 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Seller By Revenue in Smart Category" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Seller By Revenue in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Seller By Revenue in Smart Category" on the emaildebug page
  
Scenario: Verifying the strategy "Best Seller by Revenue per Product View (last 90 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Seller by Revenue per Product View (last 90 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Seller by Revenue per Product View (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Seller by Revenue per Product View in Smart Category" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Seller by Revenue per Product View in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Seller by Revenue per Product View in Smart Category" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Conversion (last 90 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Conversion (last 90 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Conversion in Smart Category" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Conversion in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Conversion in Smart Category" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Revenue ( last 28 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Revenue ( last 28 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Revenue ( last 28 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Revenue ( last 28 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Revenue ( last 28 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Revenue ( last 28 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Units (last 7 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Units (last 7 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Units (last 7 days)" on the emaildebug page
  
Scenario: Verifying the strategy "Best Sellers by Units in Smart Category" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "Best Sellers by Units in Smart Category" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "Best Sellers by Units in Smart Category" on the emaildebug page
  
Scenario: Verifying the strategy "New products from favourite categories(last 120 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
  And I pause for 10 seconds
  When I drag and drop "New products from favourite categories(last 120 days)" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see "New products from favourite categories(last 120 days)" on the emaildebug page

   
Scenario: Verifying no repeat recs
  And I enter email name as "AutoTestEmail26"
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
#  And I enter email as "webtestpeerius@mailinator.com"
 # And I click on the trigger test email link
#  And I pause for 10 seconds
 # And I go to the mailinator page
  And I enter email as "webtestpeerius@mailinator.com"
  And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
  Then I should see either "(New Products(last 14 days) ||Product Catalog)" on the emaildebug page
#  When I click on the Go button on the mailinator page
 # And I pause for 5 seconds
#  Then I should see Our Recommendations link on the mailinator page
  #When I open the first Our Recommendations email on the mailinatorinbox page
  #And I pause for 5 seconds
# Then I should see peerius recommendations in the email body
 # And I pause for 5 seconds
  #Then I should see "This is the sample email with Peerius Recommendations." in the email body 
  
  
  
  
  
 
