@smartmanager
Feature: SMART-Mail

#
# PEERIUS-1897SMART-mail No Repeat Recs
# PEERIUS-1898 SMART-mail Run out of New Recs
# 
#

Background:
Given I am on the smartmanager login page

Scenario: Users should be able to login to SMART-manager
  And I login as "fsultana" using password "4n424yq4n3w"
  Then I should end up on the home page
  
Scenario: Smart Mail strategy test 
	Given I am on smart manager homepage
	When I select "client" from the dropdown
	Then I click on Email Link
	And I click on Emailwidget link for<algorithm>
	Then I should end up on the emailwidget page
	And I enter email as "webtest@mailinator.com"
	And I click on debug link
	Then I land on debug info page
	And the debug info should show at least 3 SMART-recs
 
 
 


Scenario: Users should be able to logout of SMART-manager
 And I login as "fsultana" using password "4n424yq4n3w"
  And I should end up on the home page
  And I click logout
  Then  I should end up on the login page
