<% if site["ignore"] or site["apikey"].nil? %>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#
@<%= site["site_name"] %>
@smartapi


Feature: <%= site["pretty_name"] %> SMART-API recs

Background:
    Given I am using SMART-API to access <%= site["site_name"] %>
<% if site["uat_apikey"] %>
    And I am using uat client token <%= site["uat_apikey"] %>
    And I am using production client token <%= site["apikey"] %>
<% else %>
    And I am using client token <%= site["apikey"] %>
<% end %>

<% for page_name in ["home", "category", "product", "basket", "checkout", "order", "brand", "attribute", "other"] %>
<% page = site[page_name+"_page"] %>
<% if page && page["expected_api_recs"] %>
Scenario: <%= site["pretty_name"] %> SMART-recs can be delivered on <%= page_name %> page using SMART-API
    When I track the <%= page_name %> page        
    Then I should get an OK status back
    And I should get at least <%= page["expected_api_recs"] %> SMART-recs in the response 

Scenario: <%= site["pretty_name"] %> SMART-recs clicks can be tracked on <%= page_name %> page using SMART-API
    When I track the <%= page_name %> page
    And I track a click for the first SMART-rec
    Then I should get an OK status back
<% end %>
<% end %>

<% page = site["searchresults_page"] %>
<% if page["zerosearch_api_recs"] && page["zerosearch_api_recs"] > 0 %>
@zerosearch
Scenario: <%= site["pretty_name"] %> Zerosearch SMART-recs can be delivered using SMART-API
  When I track a search results page
  Then I should get an OK status back
  And I should get at least <%= page["zerosearch_api_recs"] %> SMART-recs in the response
<% end %>