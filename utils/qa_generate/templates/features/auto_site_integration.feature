<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#
@sanity
@web
@<%= site["site_name"] %>
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
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  <%= extra_steps_rule(page["extra_steps"]) %>
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
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
<% if site["home_page"]["login_link"] %>
  When I click login
  And I login as "<%= site["username"] %>" using password "<%= site["password"] %>"
<% end %>
  And I go to the basket page
  And I remove all of the products from the basket
  <%= extra_steps_rule(site["login_page"]["extra_steps"]) %>
  And I go to the product page
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I click checkout
  <%= extra_steps_rule(page["extra_steps"]) %>
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
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    And I click the first SMART-content creative image
    Then it should be tracked as a category page
<% end %>
<% end %>

<% page = site["home_page"] %>
<% if page.has_key?("category_menu") %>
<% if page["ignore"] %>
@ignore
<% end %>
@allcategories
Scenario: All <%= site["pretty_name"] %> category pages are tracked correctly
    Given I am on the <%= site["site_name"] %> homepage
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    Then all categories should be tracked as Category pages except:
    <% page["category_menu_exclude"].each do |category| %>
    | <%= category %> |
    <% end %>
<% end %>