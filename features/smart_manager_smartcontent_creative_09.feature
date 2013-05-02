@smartmanager
Feature: SMART-manager

#
# Smart content creative setup tests
#
 
Background:Users should be able to create the smaart content creatives
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Given I am on the smartmanager home page
  When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 
 Scenario: Users should be able to save on Smart-Content creative
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreative"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I enter related products as "prod-en057nav" on the smartcontent creative page
 And I enter related category as "Suits>Jackets" on the smartcontent creative page
 And I enter related attributes as "suit" on the smartcontent creative page
 And I enter tags as "Suit" on the smartcontent creative page
 And I click on the save button on the smartcontent creative page
 Then I should end up on the smartcontent page
 
 Scenario: Users should not be able to save on Smart-Content creative
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreative"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I enter related products as "prod-en057nav" on the smartcontent creative page
 And I enter related category as "Suits>Jackets" on the smartcontent creative page
 And I enter related attributes as "suit" on the smartcontent creative page
 And I enter tags as "Suit" on the smartcontent creative page
 And I click on the cancel button on the smartcontent creative page
 Then I should end up on the smartcontent page
 
 Scenario: Users should not be able to select multiple categories on Smart-Content creative
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreative"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I click on the search link on the smartcontent creative page for related categories
 And I pause for 10 seconds
 And I search for related category "suits" on the smartcontent creative page
 And I click category search link on the smartcontent creative page
 And I pause for 5 seconds
 And I select "category" from the category search results on the smartcontent creative page
 And I click on the category add the selections link on the smartcontent creative page
 And I click on the save button on the smartcontent creative page
 Then I should end up on the smartcontent page
 
  Scenario: Users should not be able to select multiple products on Smart-Content creative
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreative"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I click on the search link on the smartcontent creative page for related products
 And I pause for 10 seconds
 And I search for related product "tie" on the smartcontent creative page
 And I click product search link on the smartcontent creative page
 And I pause for 5 seconds
 And I select multiple "products" from the category search results on the smartcontent creative page
 And I click on the product add the selections link on the smartcontent creative page
 And I click on the save button on the smartcontent creative page
 Then I should end up on the smartcontent page
 
 
 
 Scenario: Verifying search links for create/edit creatives
 When I click on the create link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreative"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I click on the search link on the smartcontent creative page for related products
 And I search for related product "ties" on the smartcontent creative page
 And I click product search link on the smartcontent creative page
 And I pause for 5 seconds
 And I select "Gold plain woven tie" from the product search results on the smartcontent creative page
 And I select a product from the search results on the smartcontent creative page
 And I click on the product add the selections link on the smartcontent creative page
 And I pause for 15 seconds
 And I click on the search link on the smartcontent creative page for related categories
 And I pause for 10 seconds
 And I search for related category "suits" on the smartcontent creative page
 And I pause for 10 seconds
 #And I enter "suits" on the smartcontent creative page