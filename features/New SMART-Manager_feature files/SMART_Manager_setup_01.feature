@smartmanager
Feature: New SMART-manager

#
# smartcontent setup tests for new Smart-manager
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
 Then I should end up on the creativelisting page
  And I pause for 5 seconds
  When I click on span class "New Setup" on the creativelisting page
  And I pause for 5 seconds
 Then I should end up on the adaptivecontent page 
  And I pause for 5 seconds
  And I enter the setup name as "AutoTestSetup" on the adaptivecontent page
  And I pause for 5 seconds
  And I select placement as "HomePagebanner1" on the adaptivecontent page
  And I pause for 5 seconds
  And I select first creative as "LS1 - INACTIVE" on the adaptivecontent page
  And I pause for 5 seconds
  And I click on "criteriaoptions" link on the adaptivecontent page
  And I pause for 5 seconds
  And I select option with the value "u.visitor" on the adaptivecontent page
  And I pause for 5 seconds
  And select operatoroption with the value "equals to" on the adaptivecontent page
  
  
  
  
  
  
  
#  When I click on the New Create link on the creativelisting page
 # And I pause for 5 seconds
#  And I enter the creative name as "AutoTestCreative" on the creativelisting page
 # And I pause for 5 seconds
#  And I enter image url as "http://www.ctshirts.co.uk/Content/ss12/Lifestyles/homepage/week29-uk.jpg"
  #And I pause for 5 seconds
  #And I enter link url as "http://www.ctshirts.co.uk/Men&27s-shirts/Men&27s-shirts-multi-buy-offer?q=[promotion]|||||||||||||||&cm_sp=Peerius-_-HP-_-LS1-_-Shirts4for100-_-Imagelink"
  #And I pause for 5 seconds
  #And I click on related products text area with the text "Please click to add a product"
  #And I pause for 10 seconds
  #And I search for "White t-shirt" in the related products text area
  #And I pause for 10 seconds
  #And I click on text field with the text "Click to Search for Categories"
  #And I pause for 10 seconds
  #And I search for "shirts" in the related category text field
  #And I pause for 10 seconds
#   And I click on related attributes text field with the text "Click to Search Related Attributes"
 # And I pause for 10 seconds
 # And I search for "fit : tailored" in the related attribute text field
### And I select fit:tailored from the attribute list
#And I enter "gender:male"  in the related attribute text field
#When I click on the first list element
 # And I pause for 10 seconds
  
  
  
  
 # And I enter related categories as "shirt" on the creativelisting page
  #And I pause for 5 seconds
 # And I click on "visual-input" class to search for categories
 

 # And I select "men's shirts>classic fit formal shirts" from the list

  
  
  
#  And I click on div with the class "row creative-options relative"
 # And I pause for 10 seconds
 #And I click on related attribute text field with the xpath "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[3]/div/div/div/input"
#  And I pause for 10 seconds
  #And I search for related attribute "gender:male" in the text field
  #And I pause for 5 seconds
  #And I click on div with the class "row creative-options relative"
  
  
  
  
 