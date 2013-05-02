@smartmanager
Feature: SMART-manager

#
# Smart Ranking tests
#
Background:
 Given I am on the smartmanager login page
  And I login as "fsultana" using password "4n424yq4n3w"
  Given I am on the smartmanager home page
  
Scenario:User should be able to save the category listings 
	When I click ranking on the smartmanager home page
    Then I should end up on the smartranking page
	When I click on the create link on the smartranking page
	Then I should end up on the smartranking configuration page
	And I enter the category name as "AutoTestRanking"
	And I select ranking position as "category"
	And I select the html template as "category.html"
	And I select the css template as "category.css"
	And I click the checkbox for allCategories
	And I save the smart ranking configuration
	Then I should end up on the smartranking page
	
Scenario:Validating the error message for valid category
	When I click ranking on the smartmanager home page
    Then I should end up on the smartranking page
	When I click on the create link on the smartranking page
	Then I should end up on the smartranking configuration page
	And I enter the category name as "AutoTestRanking"
	And I select ranking position as "category"
	And I select the html template as "category.html"
	And I select the css template as "category.css"
	And I click the checkbox for allCategories
	And I preview the smart ranking configuration
	Then I should see "Please provide a valid category" message on the configuration page
	
Scenario:User should be able to view the category listings 
	When I click ranking on the smartmanager home page
    Then I should end up on the smartranking page
	When I click on the create link on the smartranking page
	Then I should end up on the smartranking configuration page
	And I enter the category name as "AutoTestRanking"
	And I select ranking position as "category"
	And I select the html template as "category.html"
	And I select the css template as "category.css"
	And I click the checkbox for allCategories
	And I click on the search link on the smartranking configuration page
	And I search for "accessories" on the smartranking configuration page
	And I click category search link on the smartranking configuration page
	And I select "Belts" from the search results on the smartranking configuration page
	And I click on the preview button on the smartranking configuration page
#	When I navigate to the demoshop authentication page
	And I login as "demoshop" using password "P@ssw0rd"