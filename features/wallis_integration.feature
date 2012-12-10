Feature: Wallis Integration


@wallis
Scenario: Wallis home page is tracked correctly
	Given I am on the wallis home page
	Then it should be tracked as Home page
    