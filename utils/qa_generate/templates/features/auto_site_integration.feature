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
<% if site["integration"] %>
@<%= site["integration"] %>
<% end %>
Feature: <%= site["pretty_name"] %> Integration
#
# Tracking tests
#
<% if site["site_timeout"] %>
Background:
	Given the site can take up to <%=site["site_timeout"] %> seconds to load each page.  
<% end %>

<% for page_name in ["home", "category", "product"] %>

<% page = site[page_name+"_page"] %>
#
# Hard coded <%= page_name %> page : <%= page["URL"] %>
#
<% if page["ignore"] %>
@ignore
<% end %>
@<%= page_name %>_page
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

<% if site["random_product_page"] %>
#
# Random product page
#
<% page = site["random_product_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_product_page
Scenario: A random product page from <%= site["pretty_name"] %> is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then a random product should be tracked as Product page using link filter: 
  <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>
<% end %>

<% if site["random_category_page"] %>
#
# Random category page
#
<% page = site["random_category_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_category_page
Scenario: A random category page from <%= site["pretty_name"] %> is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then a random category should be tracked as Category page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>
<% end %>

#
# Basket page
#
<% page = site["basket_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@basket_page
Scenario: <%= site["pretty_name"] %> basket page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> basket page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  And I remove all of the products from the basket
  And I go to the product page
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  Then it should be tracked as a basket page 
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

#
# Checkout page
#
<% page = site["checkout_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@checkout_page
Scenario: <%= site["pretty_name"] %> checkout page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  And I pause for 10 seconds
<% if site["home_page"]["login_link"] %>
  When I click login
  And I login as "<%= site["username"] %>" using password "<%= site["password"] %>"
<% end %>
  And I go to the basket page
  And I pause for 10 seconds
  And I remove all of the products from the basket
  <%= extra_steps_rule(site["login_page"]["extra_steps"]) %>
  And I go to the product page
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I pause for 10 seconds
  And I click checkout
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then it should be tracked as a Checkout page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

#
# Search page
#
<% page = site["searchresults_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@search_page
Scenario: <%= site["pretty_name"] %> search results page is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
   Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
   And I use the SPR key
<% end %>
   When I search for "<%= site["valid_search_term"] %>"
   Then it should be tracked as a search results page
   <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if page["zerosearch_recs"] > 0 %>
#
# Zero search page
#
@zero_search_page
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> zero search recommendations are shown
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
   Given I am on the <%= site["site_name"] %> home page
   <% if site["needs_SPR"] or page["needs_SPR"] %>
   And I use the SPR key
   <% end %>
   When I search for "<%= site["zero_search_term"] %>"
   And I pause for 5 seconds
   Then it should be tracked as a search results page
   <%= expect_recs_rule(page["zerosearch_recs"]) %>
<% end %>
<% end %>

<% if site["order_page"] %>
#
# Order confirmation page
#
<% page = site["order_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@order_page
Scenario: <%= site["pretty_name"] %> order page is tracked correctly
  Given I am on the <%= site["site_name"] %> home page
  And I pause for 2 seconds
<% if site["home_page"]["login_link"] %>
  When I click login
  And I login as "<%= site["username"] %>" using password "<%= site["password"] %>"
<% end %>
  And I go to the basket page
  And I pause for 10 seconds
  And I remove all of the products from the basket
  <%= extra_steps_rule(site["login_page"]["extra_steps"]) %>
  And I go to the product page
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I pause for 10 seconds
  And I click checkout
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then it should be tracked as a Order page
<% end %>

<% if site["random_order"] %>
#
# End to end testing
#
<% page = site["random_order"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_order
Scenario: Random products from <%= site["pretty_name"] %> are tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    Then one or more random products should be added to basket using link filter: 
    <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
    And I pause for 5 seconds
    And I go to the checkout page 
    <%= extra_steps_rule(page["extra_steps"]) %>
    Then it should be tracked as a Order page
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
Scenario: SMART-content links work on on <%= site["pretty_name"] %> home page
<% if page.has_key?("custom_tracking_test") %>
<%= page["custom_tracking_test"] %>
<% else %>
    Given I am on the <%= site["site_name"] %> home page
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    And I click the first SMART-content creative image
    Then it should be tracked as a category page
<% end %>
<% end %>

<% page = site["home_page"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@all_categories_test
Scenario: All <%= site["pretty_name"] %> category pages are tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
    <% end %>
    Then all categories should be tracked as Category pages except:
    <% site["category_menu_exclude"].each do |category| %>
    |<%= category %>|
    <% end %>
<% end %>

<% page = site["home_page"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_category_test
Scenario: A random category page from <%= site["pretty_name"] %> is tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    Then a random category should be tracked as Category page
<% end %>

<% page = site["home_page"] %>
<% if site["category_menu"] && site["product_links"]%>
<% if page["ignore"] %>
@ignore
<% end %>
@random_product_test
Scenario: A random product page from <%= site["pretty_name"] %> is tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    Then a random product should be tracked as Product page using link filter: 
    <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
<% end %>





