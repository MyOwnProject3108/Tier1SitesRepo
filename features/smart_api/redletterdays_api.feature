@smartapi
@smartranking
@redletterdays
Feature: SMART-API: Red Letter Days specific tests.

#
# SMART-API zero-search
#
Scenario: Zerosearch SMART-recs are delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stgu4t
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response
  
  
Scenario:SMART-recs are delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stgu4t
  When I track a Home page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response  

#Request; with same configuration in SM-Setup and in API call without -Product filed-
#Scenario: SMART-ranking can be delivered on category page using SMART-API : with same configuration in SM-Setup and in API call without -Product filed-
#    Given I am using SMART-API to access redletterdays
#    And I am using client token 6G54jh5d94stgu4t
    #When I supply SMART-ranking setup info
	#When I supply SMART-ranking setup with product field for "Couples>Days Out" and expect no recs 
    #And I track the configured category page for "Couples>Days Out"       
    #Then I should get an OK status back
    #And I should get at least 2 items of SMART-ranking content
	##And one of the SMART-Ranking listing names should contain "Couples"

#with Product field--FOR DIFFERENT  CATEGORY CONFIGURATION--EXPECTED Ranking RECS..	
#Scenario: SMART-ranking can be delivered on category page using SMART-API with Product field--FOR same CATEGORY CONFIGURATION--EXPECTED Ranking RECS
#	Given I am using SMART-API to access redletterdays
#    And I am using client token "6G54jh5d94stgu4t"
#	When I supply SMART-ranking setup with product field for "Couples>Days Out" and expect no recs 
#	And I track the category page configured
#    Then I should get an OK status back
#    And I should get at least 2 items of SMART-ranking content
#    #And one of the SMART-Ranking listing names should contain "Couples"

   
 ##with Product feild---Ranking configured for different category
#Scenario: SMART-ranking can be delivered on category page using SMART-API :with Product feild---Ranking configured for different category
#	Given I am using SMART-API to access redletterdays
#    And I am using client token "6G54jh5d94stgu4t"#	When I supply SMART-ranking setup with product field for "Kids>Kids Sports" and expect no recs 
#	And I track the category page        
#    Then I should get an OK status back
#    And I should get no items of SMART-ranking content
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	