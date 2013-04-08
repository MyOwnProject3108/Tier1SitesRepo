@smartmanager
Feature: SMART-manager

#
# email tests 
#
#@FF_ESR_Only
Background:
Given I am on the smartmanager login page
And I login as "fsultana" using password "4n424yq4n3w"
Then I should end up on the home page
  
Scenario: Users should be able to create email widget
  When I click on the smartmanger email link 
  Then I should end up on the email page
  When I click on the create link on the email page
  Then I should end up on the emailcreate page
  And I enter email name as "AutoTestEmail"
  And I enter email content width as 200 and height as 140
  And  I select title color "blue"
  And I select price color "red"
  And I select background color "yellow"
  When I drag "Abandoned Basket" rule to the position 1 slot
  And copy position 1 configuration to position 2
  And I enter email as "webtest@mailinator.com"
  And I click on the trigger test email link
  And I pause for 2 seconds
  And I go to the mailinator page
  Then I should see Our Recommendations link on the mailinator page
 # When I open Our Recommendations email on the mailinator page
  #Then I should see peerius recommendations in the email body
  #Then I should see "This is the sample email with Peerius Recommendations." in the email body
  
  
  
  
  
  
 
