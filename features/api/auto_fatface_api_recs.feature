@ignore
@fatface
@smartapi
Feature: fatface SMART-API recs


@zerosearch
Scenario: fatface Zerosearch SMART-recs can be delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 6 SMART-recs in the response
