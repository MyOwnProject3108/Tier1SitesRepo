@smartmanager
Feature: SMART-manager

#
# Smart content tests
#
 
Background:Users should be able to duplicate/edit or delete the smaart content creatives
 Given I am on the smartmanager login page
 And I login as "fsultana" using password "4n424yq4n3w"
 Given I am on the smartmanager home page
 When I click content on the smartmanager home page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to duplicate Smart-Content creative
 When I click on the last duplicate link on the smartcontent page
 Then I should end up on the smartcontent page 
 
Scenario: Users should be able to delete on Smart-Content creative
 When I click on the last delete link on the smartcontent page
 Then I should end up on the smartcontent page
 
Scenario: Users should be able to edit on Smart-Content creative
 When I click on the last edit link on the smartcontent page
 Then I should end up on the smartcontent creative page
 And I enter the creative name as "AutoTestCreativeEdit"
 And I enter the creative image url as "http://demoshop:P@ssw0rd@demo.peerius.com/media/baseimages/suits_main_675_480.jpg"
 And I enter the creative link url as "http://demoshop:P@ssw0rd@demo.peerius.com/index.php/suits.html"
 And I enter related products as "prod-en057nav" on the smartcontent creative page
 And I enter related category as "Suits>Jackets" on the smartcontent creative page
 And I enter related attributes as "suit" on the smartcontent creative page
 And I enter tags as "Suit" on the smartcontent creative page
 And I click on the save button on the smartcontent creative page
 Then I should end up on the smartcontent page
 