@smartmanager
Feature: SMART-manager

#
# Verifying the smartcontent for ctshirts
#
 
Scenario:Users should be able to see smartcontent for ctshirts
Given I am on the smartmanager login page
 And I login as "givahnenko" using password "4v1gm0d5k1"
 Then I should end up on the orders page
 And I pause for 10 seconds
 And I click on "select2-search" link on the orders page
 And I enter sitename as "ctshirts" on the orders page
 And I pause for 5 seconds
 When I click on old interface link on the orders page
 And I pause for 5 seconds
 Then I should end up on the home page
  When I click content on the smartmanager home page
 And I pause for 5 seconds  
 Then I should end up on the smartcontent page
# Given I am on the smartmanager login page
 #And I login as "givahnenko" using password "4v1gm0d5k1"
 #Given I am on the smartmanager home page
 # And I pause for 40 seconds
 #And I select "ctshirts" from the sites list on the smartmanager home page
 #When I click content on the smartmanager home page
 #Then I should end up on the smartcontent page
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoLS1Creative"
 And I enter the creative image url as "http://www.ctshirts.co.uk/Content/ss12/Lifestyles/homepage/week29-uk.jpg"
 And I enter the creative link url as "http://www.ctshirts.co.uk/Men&27s-shirts/Men&27s-shirts-multi-buy-offer?q=[promotion]|||||||||||||||&cm_sp=Peerius-_-HP-_-LS1-_-Shirts4for100-_-Imagelink"
 #And I enter related products as "prod-en057nav" on the smartcontent creative page
 And I enter related category as "shirts,shirts>formal shirts,formal shirts" on the smartcontent creative page
 And I enter related attributes as "gender:male" on the smartcontent creative page
 And I enter tags as "formal shirt" on the smartcontent creative page
 And I click on the save button on the smartcontent creative page
 Then I should end up on the smartcontent page
 When I click on the setup link on the smartcontent page
 Then I should end up on the smartcontent setup page 
 And I click on the create link on the smartcontent setup page 
 Then I should end up on the smartcontent location page
 And I enter content name as "AutoCTShirtsSmartContent" on the smartcontent location page
 And I select content location as HomePagebanner1
 Then I click on the Add content button on the smartcontent location page
 And I select creative image as "AutoLS1Creative" on the smartcontent location page
 Then I enter "tags" in the criteria1 position on the smartcontent location page
 Then I click on the Add content button on the smartcontent location page
 Then I enter "default" in the "criteria2" position on the smartcontent location page
 And I click on the save button on the smartcontent location page
 Then I should end up on the smartcontent page
 And I Activate the last smartcontent setup on the smartcontent page
 Then I should end up on the smartcontent activation page
 And I click on the Activate button on the smartcontent activation page
 Then I should end up on the smartcontent page
 When I visit the ctshirts home page 
 And I pause for 50 seconds
Then the debug info should show the SMART-content
# Then I should see at least 1 items of SMART-content
 
