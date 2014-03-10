@smartapi 
@arcadia
Feature: SMART-API Arcadia specific tests for mobileapp api test for different sites.
Scenario: I can track and get recs for arcadia using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" home page by using mobileapp api token "rye23sdyu342su4t"
    Then I should get an OK status back

Scenario: I can track and get recs for bhs product using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" product page by using mobileapp api token "rye23sdyu342su4t" with refocde "9732684473" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for bhs product recs click using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" product page rec click by using mobileapp api token "rye23sdyu342su4t" with refocde "9754014473"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for bhs category page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	#And I am using client token rye23sdyu342su4t
	When I track "bhs" category page by using mobileapp api token "rye23sdyu342su4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for bhs search results page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	#And I am using client token rye23sdyu342su4t
	When I track "bhs" search page by using mobileapp api token "rye23sdyu342su4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for bhs Basket page using mobileapp api for BHS
	Given I am using SMART-API to access bhs
	When I track "bhs" basket page by using mobileapp api token "rye23sdyu342su4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

###above steps are complete

Scenario: I can track and get recs for arcadia using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" home page by using mobileapp api token "x4753ag81h37u4t"
	Then I should get an OK status back

Scenario: I can track and get recs for topshop product using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" product page by using mobileapp api token "x4753ag81h37u4t" with refocde "TS08L05BWHT"
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response
	
Scenario: I can track and get recs for topshop product recs click using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" product page rec click by using mobileapp api token "x4753ag81h37u4t" with refocde "TS13A17ECRM"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
	
Scenario: I can track and get recs for topshop category page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" category page by using mobileapp api token "x4753ag81h37u4t" with category "ties"
    Then I should get an OK status back
			
Scenario: I can track and get recs for topshop search results page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" search page by using mobileapp api token "x4753ag81h37u4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topshop Basket page using mobileapp api for TOPSHOP
	Given I am using SMART-API to access topshop
	When I track "topshop" basket page by using mobileapp api token "x4753ag81h37u4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	And I am using client token x4753ag81h37u4t
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for WALLIS
	Given I am using SMART-API to access wallis 
	When I track "wallis" home page by using mobileapp api token "srfswrw3223dhu4t"
    Then I should get an OK status back

Scenario: I can track and get recs for wallis product using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	When I track "wallis" product page by using mobileapp api token "srfswrw3223dhu4t" with refocde "TS08L05BWHT" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for wallis product recs click using mobileapp api for wallis
	Given I am using SMART-API to access wallis
When I track "wallis" product page rec click by using mobileapp api token "srfswrw3223dhu4t" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for wallis category page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	#And I am using client token srfswrw3223dhu4t
	When I track "wallis" category page by using mobileapp api token "srfswrw3223dhu4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for wallis search results page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	#And I am using client token srfswrw3223dhu4t
	When I track "wallis" search page by using mobileapp api token "srfswrw3223dhu4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for wallis Basket page using mobileapp api for wallis
	Given I am using SMART-API to access wallis
	When I track "wallis" basket page by using mobileapp api token "srfswrw3223dhu4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for TOPMAN
	Given I am using SMART-API to access topman 
	When I track "topman" home page by using mobileapp api token "lkdsa256784dsu4t"
    Then I should get an OK status back

Scenario: I can track and get recs for topman product using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" product page by using mobileapp api token "lkdsa256784dsu4t" with refocde "TS08L05BWHT" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for topman product recs click using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" product page rec click by using mobileapp api token "lkdsa256784dsu4t" with refocde "TM68O84DSTN"
	Then I should get an OK status back
	And I track a click for the first SMART-rec

Scenario: I can track and get recs for topman category page using mobileapp api for topman
	Given I am using SMART-API to access topman
	#And I am using client token lkdsa256784dsu4t
	When I track "topman" category page by using mobileapp api token "lkdsa256784dsu4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for topman search results page using mobileapp api for topman
	Given I am using SMART-API to access topman
	#And I am using client token lkdsa256784dsu4t
	When I track "topman" search page by using mobileapp api token "lkdsa256784dsu4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for topman Basket page using mobileapp api for topman
	Given I am using SMART-API to access topman
	When I track "topman" basket page by using mobileapp api token "lkdsa256784dsu4t" with firstrefcd "TM68O10EBLE" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for arcadia using mobileapp api for EVANS
	Given I am using SMART-API to access evans
	When I track "evans" home page by using mobileapp api token "iurhrfb43683bu4t"
    Then I should get an OK status back

Scenario: I can track and get recs for evans product using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" product page by using mobileapp api token "iurhrfb43683bu4t" with refocde "TS08L05BWHT" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for evans product recs click using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" product page rec click by using mobileapp api token "iurhrfb43683bu4t" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for evans category page using mobileapp api for evans
	Given I am using SMART-API to access evans
	#And I am using client token iurhrfb43683bu4t
	When I track "evans" category page by using mobileapp api token "iurhrfb43683bu4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for evans search results page using mobileapp api for evans
	Given I am using SMART-API to access evans
	#And I am using client token iurhrfb43683bu4t
	When I track "evans" search page by using mobileapp api token "iurhrfb43683bu4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for evans Basket page using mobileapp api for evans
	Given I am using SMART-API to access evans
	When I track "evans" basket page by using mobileapp api token "iurhrfb43683bu4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for BURTON
	Given I am using SMART-API to access burton
	When I track "burton" home page by using mobileapp api token "bhrvkw68frbyhu4t"
    Then I should get an OK status back

Scenario: I can track and get recs for burton product using mobileapp api for burton
	Given I am using SMART-API to access burton
	When I track "burton" product page by using mobileapp api token "bhrvkw68frbyhu4t" with refocde "TS08L05BWHT"  
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for burton product recs click using mobileapp api for burton
	Given I am using SMART-API to access burton
When I track "burton" product page rec click by using mobileapp api token "bhrvkw68frbyhu4t" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for burton category page using mobileapp api for burton
	Given I am using SMART-API to access burton
	#And I am using client token bhrvkw68frbyhu4t
	When I track "burton" category page by using mobileapp api token "bhrvkw68frbyhu4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for burton search results page using mobileapp api for burton
	Given I am using SMART-API to access burton
	#And I am using client token bhrvkw68frbyhu4t
	When I track "burton" search page by using mobileapp api token "bhrvkw68frbyhu4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for burton Basket page using mobileapp api for burton
	Given I am using SMART-API to access burton
	When I track "burton" basket page by using mobileapp api token "bhrvkw68frbyhu4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
	
Scenario: I can track and get recs for arcadia using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" home page by using mobileapp api token "qwmngdth1342qu4t"
    Then I should get an OK status back

Scenario: I can track and get recs for missselfridge product using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" product page by using mobileapp api token "qwmngdth1342qu4t" with refocde "TS08L05BWHT" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for missselfridge product recs click using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" product page rec click by using mobileapp api token "qwmngdth1342qu4t" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for missselfridge category page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	#And I am using client token qwmngdth1342qu4t
	When I track "missselfridge" category page by using mobileapp api token "qwmngdth1342qu4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for missselfridge search results page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	#And I am using client token qwmngdth1342qu4t
	When I track "missselfridge" search page by using mobileapp api token "qwmngdth1342qu4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for missselfridge Basket page using mobileapp api for missselfridge
	Given I am using SMART-API to access missselfridge
	When I track "missselfridge" basket page by using mobileapp api token "qwmngdth1342qu4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for arcadia using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" home page by using mobileapp api token "we45er567dga1u4t"
    Then I should get an OK status back

Scenario: I can track and get recs for dorothyperkins product using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" product page by using mobileapp api token "we45er567dga1u4t" with refocde "TS08L05BWHT" 
	Then I should get an OK status back
	And I should get at least 1 SMART-recs in the response

Scenario: I can track and get recs for dorothyperkins product recs click using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" product page rec click by using mobileapp api token "we45er567dga1u4t" with refocde "prod-dw041dpu"
	Then I should get an OK status back
	And I track a click for the first SMART-rec
		
Scenario: I can track and get recs for dorothyperkins category page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	#And I am using client token we45er567dga1u4t
	When I track "dorothyperkins" category page by using mobileapp api token "we45er567dga1u4t" with category "ties"
    Then I should get an OK status back
		
Scenario: I can track and get recs for dorothyperkins search results page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	#And I am using client token we45er567dga1u4t
	When I track "dorothyperkins" search page by using mobileapp api token "we45er567dga1u4t" 
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response

Scenario: I can track and get recs for dorothyperkins Basket page using mobileapp api for dorothyperkins
	Given I am using SMART-API to access dorothyperkins
	When I track "dorothyperkins" basket page by using mobileapp api token "we45er567dga1u4t" with firstrefcd "8613789533" secndrefcd "2837658513"
	Then I should get an OK status back
	And I should get at least 1 SMART-rec in the response
