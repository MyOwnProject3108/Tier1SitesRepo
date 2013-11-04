@smartapi 
@arcadia
Feature: SMART-API Arcadia specific tests for mobileapp api test for different sites.
Scenario: I can track and get recs for arcadia using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" home page by using mobileapp api token "rye23sdyu342s"
    Then I should get an OK status back

Scenario: I can track and get recs for bhs product using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" product page by using mobileapp api token "rye23sdyu342s" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for bhs product recs click using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" product page rec click by using mobileapp api token "rye23sdyu342s" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for bhs category page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	#And I am using client token rye23sdyu342s
	When I track "bhs" category page by using mobileapp api token "rye23sdyu342s" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for bhs search results page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	#And I am using client token rye23sdyu342s
	When I track "bhs" search page by using mobileapp api token "rye23sdyu342s" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for bhs Basket page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" basket page by using mobileapp api token "rye23sdyu342s" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

###above steps are complete

Scenario: I can track and get recs for arcadia using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" home page by using mobileapp api token "x4753ag81h37"
	Then I should get an OK status back

Scenario: I can track and get recs for topshop product using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" product page by using mobileapp api token "x4753ag81h37" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response
	
Scenario: I can track and get recs for topshop product recs click using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" product page rec click by using mobileapp api token "x4753ag81h37" with refocde "TS13A17ECRM"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
	
Scenario: I can track and get recs for topshop category page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" category page by using mobileapp api token "x4753ag81h37" with category "ties"
    Then I should get an OK status back
			
Scenario: I can track and get recs for topshop search results page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" search page by using mobileapp api token "x4753ag81h37" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topshop Basket page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" basket page by using mobileapp api token "x4753ag81h37" with firstrefcd "8613789533" secndrefcd "2837658513"
	And I am using client token x4753ag81h37
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	When I track "wallis" home page by using mobileapp api token "srfswrw3223dh"
    Then I should get an OK status back

Scenario: I can track and get recs for wallis product using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	When I track "wallis" product page by using mobileapp api token "srfswrw3223dh" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for wallis product recs click using mobileapp api for wallis
	Given I am using SMART-API to access wallis
When I track "wallis" product page rec click by using mobileapp api token "srfswrw3223dh" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for wallis category page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	#And I am using client token srfswrw3223dh
	When I track "wallis" category page by using mobileapp api token "srfswrw3223dh" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for wallis search results page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	#And I am using client token srfswrw3223dh
	When I track "wallis" search page by using mobileapp api token "srfswrw3223dh" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for wallis Basket page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	When I track "wallis" basket page by using mobileapp api token "srfswrw3223dh" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman 
	When I track "topman" home page by using mobileapp api token "lkdsa256784ds"
    Then I should get an OK status back

Scenario: I can track and get recs for topman product using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" product page by using mobileapp api token "lkdsa256784ds" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for topman product recs click using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" product page rec click by using mobileapp api token "lkdsa256784ds" with refocde "TM68O84DSTN"
	Then I should get an OK status back
	And I track a click for the first SMART-rec

Scenario: I can track and get recs for topman category page using mobileapp api for topman
	Given I am using SMART-API to access topman
	#And I am using client token lkdsa256784ds
	When I track "topman" category page by using mobileapp api token "lkdsa256784ds" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for topman search results page using mobileapp api for topman
	Given I am using SMART-API to access topman
	#And I am using client token lkdsa256784ds
	When I track "topman" search page by using mobileapp api token "lkdsa256784ds" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topman Basket page using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" basket page by using mobileapp api token "lkdsa256784ds" with firstrefcd "TM68O10EBLE" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for arcadia using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	When I track "evans" home page by using mobileapp api token "iurhrfb43683b"
    Then I should get an OK status back

Scenario: I can track and get recs for evans product using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" product page by using mobileapp api token "iurhrfb43683b" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for evans product recs click using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" product page rec click by using mobileapp api token "iurhrfb43683b" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for evans category page using mobileapp api for evans
	Given I am using SMART-API to access evans
	#And I am using client token iurhrfb43683b
	When I track "evans" category page by using mobileapp api token "iurhrfb43683b" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for evans search results page using mobileapp api for evans
	Given I am using SMART-API to access evans
	#And I am using client token iurhrfb43683b
	When I track "evans" search page by using mobileapp api token "iurhrfb43683b" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for evans Basket page using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" basket page by using mobileapp api token "iurhrfb43683b" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	When I track "burton" home page by using mobileapp api token "bhrvkw68frbyh"
    Then I should get an OK status back

Scenario: I can track and get recs for burton product using mobileapp api for burton
	Given I am using SMART-API to access burton
	When I track "burton" product page by using mobileapp api token "bhrvkw68frbyh" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for burton product recs click using mobileapp api for burton
	Given I am using SMART-API to access burton
When I track "burton" product page rec click by using mobileapp api token "bhrvkw68frbyh" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for burton category page using mobileapp api for burton
	Given I am using SMART-API to access burton
	#And I am using client token bhrvkw68frbyh
	When I track "burton" category page by using mobileapp api token "bhrvkw68frbyh" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for burton search results page using mobileapp api for burton
	Given I am using SMART-API to access burton
	#And I am using client token bhrvkw68frbyh
	When I track "burton" search page by using mobileapp api token "bhrvkw68frbyh" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for burton Basket page using mobileapp api for burton
	Given I am using SMART-API to access burton
	When I track "burton" basket page by using mobileapp api token "bhrvkw68frbyh" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" home page by using mobileapp api token "qwmngdth1342q"
    Then I should get an OK status back

Scenario: I can track and get recs for missselfridge product using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" product page by using mobileapp api token "qwmngdth1342q" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for missselfridge product recs click using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
When I track "missselfridge" product page rec click by using mobileapp api token "qwmngdth1342q" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for missselfridge category page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	#And I am using client token qwmngdth1342q
	When I track "missselfridge" category page by using mobileapp api token "qwmngdth1342q" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for missselfridge search results page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	#And I am using client token qwmngdth1342q
	When I track "missselfridge" search page by using mobileapp api token "qwmngdth1342q" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for missselfridge Basket page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" basket page by using mobileapp api token "qwmngdth1342q" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for arcadia using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" home page by using mobileapp api token "we45er567dga1"
    Then I should get an OK status back

Scenario: I can track and get recs for dorothyperkins product using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" product page by using mobileapp api token "we45er567dga1" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for dorothyperkins product recs click using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
When I track "dorothyperkins" product page rec click by using mobileapp api token "we45er567dga1" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for dorothyperkins category page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	#And I am using client token we45er567dga1
	When I track "dorothyperkins" category page by using mobileapp api token "we45er567dga1" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for dorothyperkins search results page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	#And I am using client token we45er567dga1
	When I track "dorothyperkins" search page by using mobileapp api token "we45er567dga1" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for dorothyperkins Basket page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" basket page by using mobileapp api token "we45er567dga1" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
