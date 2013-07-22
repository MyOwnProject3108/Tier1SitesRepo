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
  
Scenario: Users should be able to create email widget
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
 # And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop "Abandoned Basket" rule to the position slot on the emailcreate page
  And I pause for 5 seconds
 And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com"
  And I click on the trigger test email link
  And I pause for 10 seconds
  And I go to the mailinator page
  And I enter email as "webtestpeerius@mailinator.com" on the mailinator page
  When I click on the Go button on the mailinator page
  And I pause for 5 seconds
  Then I should see Our Recommendations link on the mailinator page
  #When I open the first Our Recommendations email on the mailinatorinbox page
  #And I pause for 5 seconds
# Then I should see peerius recommendations in the email body
 # And I pause for 5 seconds
  #Then I should see "This is the sample email with Peerius Recommendations." in the email body

Scenario: Verifying the strategy "Best Sellers by Conversion (last 90 days)" in the debug
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  And I pause for 5 seconds
#  And I select no repeat recs as 1 on the emailcreate page
  And I pause for 10 seconds
  When I drag and drop Best Sellers by Conversion (last 90 days) rule to the position slot on the emailcreate page
  And I pause for 5 seconds
  And copy position 1 configuration to position 2
  And I enter email as "webtestpeerius@mailinator.com" 
   And I click on the preview email link on the emailcreate page
  And I pause for 10 seconds
  When I click on the debug information link on the emailcreate page
  And I pause for 10 seconds
 And the debug info should show the "expected strategy" on the emaildebug page
  #Then the expected strategy should be "Best Sellers by Conversion (last 90 days)" on the emaildebug page
  
  
  
  
  
  
 
