#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>

#
@<%= site["site_name"] %>
<% if site["ignore"] %>
@ignore
<% end %>
Feature: <%= site["pretty_name"] %> Integration

#
# Tracking tests
#


<% for page_name in ["home", "category", "product", "basket"] %>
<% page = site[page_name+"_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> <%= page_name %> page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> <%= page_name %> page
#  And I clear my browser cookies
  <% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
  <% end %>
  Then it should be tracked as a <%= page_name %> page
  <%= expect_recs_rule(page["expected_recs"]) %>

<% end %>
<% end %>

<% page = site["checkout_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> checkout page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
#  And I clear my browser cookies
  <% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
  <% end %>
  When I click login
  And I login as "<%= site["username"] %>" using password "<%= site["password"] %>"
  And I go to the product page
  <%= extra_steps_rule(site["product_page"]["product_extra_steps"]) %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  <%= extra_steps_rule(page["checkout_extra_steps"]) %>
  Then it should be tracked as a Checkout page
  <%= expect_recs_rule(page["expected_recs"]) %>

<% end %>
<% page = site["searchresults_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> search results page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
    Given I am on the <%= site["site_name"] %> homepage
#    And I clear my browser cookies
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    When I search for "<%= site["valid_search_term"] %>"
    Then it should be tracked as a search results page
    <%= expect_recs_rule(page["expected_recs"]) %>

<% end %>
<% if page["zerosearch_recs"] > 0 %>
#
# Zero search tests
#
@zerosearch
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> zero search recommendations are shown
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
    Given I am on the <%= site["site_name"] %> homepage
#    And I clear my browser cookies
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    When I search for "<%= site["zero_search_term"] %>"
    Then it should be tracked as a search results page
    <%= expect_recs_rule(page["zerosearch_recs"]) %>
<% end %>
<% end %>

<% if site["has_content"] %>
<% page = site["home_page"] %>
#
# SMART-content tests
#
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: SMART-content links work on on <%= site["pretty_name"] %> homepage
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
    Given I am on the <%= site["site_name"] %> homepage
#    And I clear my browser cookies
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    And I click the first SMART-content creative image
    Then it should be tracked as a category page
<% end %>
<% end %>
