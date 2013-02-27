@smartapi
@redletterdays
Feature: SMART-API: Red Letter Days

#
# SMART-recs
#
Scenario: SMART-recs can be delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track the home page
  Then I should get an OK status back
  And I should get at least 12 SMART-recs in the response

#
# SMART-API zero-search
#
Scenario: Zerosearch SMART-recs are delivered using SMART-API
  Given I am using SMART-API to access redletterdays
  And I am using client token 6G54jh5d94stg
  When I track a search results page
  Then I should get an OK status back
  And I should get at least 1 SMART-rec in the response