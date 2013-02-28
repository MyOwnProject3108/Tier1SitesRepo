<% if site["apikey"].nil? %>
@ignore
<% end %>
@<%= site["site_name"] %>
@smartapi
Feature: <%= site["pretty_name"] %> SMART-API content

<% for page_name in ["home", "category", "product", "basket", "checkout", "order", "searchresults", "brand", "attribute", "other"] %>
<% page = site[page_name+"_page"] %>
<% if page && page["expected_api_content"] %>
Scenario: <%= site["pretty_name"] %> SMART-content can be delivered on <%= page_name %> page using SMART-API
    Given I am using SMART-API to access <%= site["site_name"] %>
    And I am using client token <%= site["apikey"] %>
    When I track the <%= page_name %> page        
    Then I should get an OK status back
    And I should get at least <%= page["expected_api_content"] %> SMART-content creatives in the response        

Scenario: <%= site["pretty_name"] %> SMART-content clicks can be tracked on <%= page_name %> page using SMART-API
    Given I am using SMART-API to access <%= site["site_name"] %>
    And I am using client token <%= site["apikey"] %>
    When I track the <%= page_name %> page
    And I track a click for the first SMART-content creative
    Then I should get an OK status back
<% end %>
<% end %>