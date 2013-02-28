<% if site["apikey"].nil? %>
@ignore
<% end %>
@<%= site["site_name"] %>
@smartapi
Feature: <%= site["pretty_name"] %> SMART-API ranking

<% for page_name in ["home", "category", "product", "basket", "checkout", "order", "searchresults", "brand", "attribute", "other"] %>
<% page = site[page_name+"_page"] %>
<% if page && page["expected_api_ranking"] %>
Scenario: <%= site["pretty_name"] %> SMART-ranking can be delivered on <%= page_name %> page using SMART-API
    Given I am using SMART-API to access <%= site["site_name"] %>
    And I am using client token <%= site["apikey"] %>
    When I supply SMART-ranking setup info
    And I track the <%= page_name %> page        
    Then I should get an OK status back
    And I should get at least <%= page["expected_api_ranking"] %> items of SMART-ranking content        

Scenario: <%= site["pretty_name"] %> SMART-ranking clicks can be tracked on <%= page_name %> page using SMART-API
    Given I am using SMART-API to access <%= site["site_name"] %>
    And I am using client token <%= site["apikey"] %>
    When I supply SMART-ranking setup info
    When I track the <%= page_name %> page
    And I track a click for the first SMART-ranking item
    Then I should get an OK status back
<% end %>
<% end %>