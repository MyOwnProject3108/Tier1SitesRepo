@smartmanager
Feature: New SMART-manager

#
# smartcontent creative tests for new Smart-manager
#

Scenario:
Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on the smartmanger content link
 And I pause for 5 seconds
 #Then I should end up on the emailconfiguration page
 Then I should end up on the creativelisting page
 #And I click on "select2-input select2-focused" class on the orders page
# And I select "ctshirts" from the sites list on the orders page
 #And I select "ctshirts" from the sites list on the smartmanager home page
# And I click on the New and Shiny Smart Manager link on the smartmanager home page
# And I pause for 5 seconds
# Then I should end up on the orders page
# When I click on the smartmanger email link
# Then I should end up on the newemail page
# When I click on the "Create a new campaign" link on the newemail page
# Then I should end up on the newemailcreate page
 
# Scenario: Verifying the styling for  Email campaigns for New Smart Manager
#  And I enter email campaign name as "AutoTestEmailCampaign1"
#  And I enter email content width as 220 and height as 140
#  And I enter background colour "#804040" on the newemailcreate page
#  And I pause for 10 seconds
#  And I enter title colour "#2beb61" on the newemailcreate page
#  And I pause for 10 seconds
#  And I select title font on the newemailcreate page
#  And I pause for 10 seconds
 # And I select title characteristics on the newemailcreate page
 # And I pause for 10 seconds
#  And I select font size on the newemailcreate page
 