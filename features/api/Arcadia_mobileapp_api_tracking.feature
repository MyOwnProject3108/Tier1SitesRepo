@ignore
@smartapi 
@arcadia
Feature: SMART-API Arcadia specific tests for mobileapp api test for different sites
Scenario: I can track and get recs for arcadia using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	#And I am using client token rye23sdyu342s
	#When I access "bhs" by using mobileapp api token "rye23sdyu342s"
	When I track "bhs" home page by using mobileapp api token "rye23sdyu342s"
    Then I should get an OK status back

Scenario: I can track and get recs for bhs product using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	And I am using client token rye23sdyu342s
	#When I access "bhs" I am using mobileapp api token "rye23sdyu342s"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for bhs product recs click using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	And I am using client token rye23sdyu342s
	#When I access "bhs" I am using mobileapp api token "rye23sdyu342s"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for bhs category page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	And I am using client token rye23sdyu342s
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for bhs search results page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	And I am using client token rye23sdyu342s
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for bhs Basket page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	And I am using client token rye23sdyu342s
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response

###above steps needs to refactored for better optimaization

Scenario: I can track and get recs for arcadia using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	#When I access "topshop" I am using mobileapp api token "x4753ag81h37"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for topshop product using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	#When I access "topshop" I am using mobileapp api token "x4753ag81h37"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for topshop product recs click using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	#When I access "topshop" I am using mobileapp api token "x4753ag81h37"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for topshop category page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for topshop search results page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topshop Basket page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	And I am using client token x4753ag81h37
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
	
###above steps needs to refactored for better optimaization

Scenario: I can track and get recs for arcadia using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	#When I access "wallis " I am using mobileapp api token "srfswrw3223dh"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for wallis  product using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	#When I access "wallis " I am using mobileapp api token "srfswrw3223dh"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for wallis  product recs click using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	#When I access "wallis " I am using mobileapp api token "srfswrw3223dh"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for wallis  category page using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for wallis  search results page using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for wallis  Basket page using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	And I am using client token srfswrw3223dh
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
	
###above steps needs to refactored for better optimaization

Scenario: I can track and get recs for arcadia using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman 
	And I am using client token lkdsa256784ds
	#When I access "topman" I am using mobileapp api token "lkdsa256784ds"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for wallis  product using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman 
	And I am using client token lkdsa256784ds
	#When I access "topman" I am using mobileapp api token "lkdsa256784ds"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for topman product recs click using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman
	And I am using client token lkdsa256784ds
	#When I access "topman" I am using mobileapp api token "lkdsa256784ds"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for topman category page using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman
	And I am using client token lkdsa256784ds
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for topman search results page using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman
	And I am using client token lkdsa256784ds
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topman Basket page using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman
	And I am using client token lkdsa256784ds
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
	
	
###above steps needs to refactored for better optimaization
Scenario: I can track and get recs for arcadia using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	#When I access "evans" I am using mobileapp api token "iurhrfb43683b"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for evans product using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	#When I access "evans" I am using mobileapp api token "iurhrfb43683b"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for evans product recs click using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	#When I access "evans" I am using mobileapp api token "iurhrfb43683b"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for evans category page using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for evans search results page using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for evans Basket page using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	And I am using client token iurhrfb43683b
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
	
###above steps needs to refactored for better optimaization
Scenario: I can track and get recs for arcadia using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	#When I access "burton" I am using mobileapp api token "bhrvkw68frbyh"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for burton product using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	#When I access "burton" I am using mobileapp api token "bhrvkw68frbyh"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for burton product recs click using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	#When I access "burton" I am using mobileapp api token "bhrvkw68frbyh"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for burton category page using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for burton search results page using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for burton Basket page using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	And I am using client token bhrvkw68frbyh
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
	
###above steps needs to refactored for better optimaization
Scenario: I can track and get recs for arcadia using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	#When I access "missselfridge" I am using mobileapp api token "qwmngdth1342q"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for missselfridge product using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	#When I access "missselfridge" I am using mobileapp api token "qwmngdth1342q"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for missselfridge product recs click using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	#When I access "missselfridge" I am using mobileapp api token "qwmngdth1342q"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for missselfridge category page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for missselfridge search results page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for missselfridge Basket page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	And I am using client token qwmngdth1342q
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
###above steps needs to refactored for better optimaization

###above steps needs to refactored for better optimaization
Scenario: I can track and get recs for arcadia using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	#When I access "dorothyperkins" I am using mobileapp api token "we45er567dga1"
	When I track the home page
    Then I should get an OK status back

Scenario: I can track and get recs for dorothyperkins product using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	#When I access "dorothyperkins" I am using mobileapp api token "we45er567dga1"
	When I track the product page
    Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for dorothyperkins product recs click using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	#When I access "dorothyperkins" I am using mobileapp api token "we45er567dga1"
	When I track the product page
	And I track a click for the first SMART-rec
    Then I should get an OK status back
	###need to fix this..
	
Scenario: I can track and get recs for dorothyperkins category page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	When I track the category page
    Then I should get an OK status back
		
Scenario: I can track and get recs for dorothyperkins search results page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	When I track a search results page
    Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for dorothyperkins Basket page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	And I am using client token we45er567dga1
	When I track a basket page
    Then I should get an OK status back
	#And I should get at least 1 SMART-rec in the response
###above steps needs to refactored for better optimaization