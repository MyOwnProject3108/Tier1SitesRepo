@old_shop_admin
Feature: Old Shop Admin A/B test

#
# AB group tests 
#
Background: 
Given I am on the smartmanager login page
And I login as "fsultana" using password "4n424yq4n3w"
When I click config
Then I should end up on the administration page
When I click AB tests
Then I should end up on the group page
  
Scenario: Users should be able activate AB group
  And I enter A=50 and B=50
  And I select "AutoTestWidgetEdit" for both groups
  And I click create
  Then I should end up on the group page
  
Scenario: Peerius Demo Shop product page tracks the widget group correctly
  Given I am on the demoshop authentication page
  When I go to the product page
  Then it should be tracked as a product page
  And the first widget name should be "ab_AutoTestWidgetEdit"
  
Scenario: Users should be able update AB group
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  And I click AB tests
  Then I should end up on the group page
  And I select "None" for groupA
  And I click update
  And the text from the update should read "Are you sure you want to update this A/B Test?"
  Then I should end up on the group page
  
  Scenario: Users should be able de-activate AB group
  Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  And I click AB tests
  Then I should end up on the group page
  And I click deactivate
 And the text from the confirm should read "Are you sure you want to deactivate this A/B Test? After deactivation, this test can't be activated again."
  Then I should end up on the group page
  
Scenario: Users should be able Add and then delete AB group
   Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  When I click config
  Then I should end up on the administration page
  When I click AB tests
  Then I should end up on the group page
  And I enter A=50 and B=50
  And I select "AutoTestWidgetEdit" for both groups
  And I click create
  Then I should end up on the group page
  And I click delete group
  And the text from the delete should read "Are you sure you want to delete this A/B Test? After deletion, all track info for this a/b test is lost." 
  Then I should end up on the group page
  
  
  

   
  
  
  
  
  
