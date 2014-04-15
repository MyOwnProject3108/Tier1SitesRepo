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
<% if site[page_name+"_page"] %>
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
<% end %>

<% if site["random_product"] %>
#
# Random product
#
<% page = site["random_product"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_product
Scenario: Randomly visited product page or pages from <%= site["pretty_name"] %> is/are tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then each randomly selected product should be tracked as a Product page using link filter: 
  <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>
<% end %>

<% if site["random_category"] %>
#
# Random category
#
<% page = site["random_category"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_category
Scenario: A random category page from <%= site["pretty_name"] %> is tracked correctly
<% if page.has_key?("custom_tracking_test") %>
  <%= page["custom_tracking_test"] %>
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then each randomly selected category should be tracked as a Category page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>
<% end %>

<% if site["basket_page"] && site["product_page"] %>
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
<% end %>

<% if site["random_basket"] %>
#
# Random basket
#
<% page = site["random_basket"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_basket
Scenario: <%= site["pretty_name"] %> basket page is tracked correctly when a random product is added to basket
#    Given I am on the <%= site["site_name"] %> basket page
  <% if site["needs_SPR"] or page["needs_SPR"] %>
    And I use the SPR key
  <% end %>
#    And I remove all of the products from the basket
#    And I go to the home page
    Given I am on the <%= site["site_name"] %> home page
    And one or more random products are added to basket using link filter: 
    <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
	And I pause for 2 seconds
    And I go to the basket page
    Then it should be tracked as a basket page 
    <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["checkout_page"] && site["product_page"] %>
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
<% end %>

<% if site["searchresults_page"] %>
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
<% end %>

<% if site["zerosearch_recs"] %>
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

<% if site["random_checkout"] %>
#
# End to end test - checkout
#
<% page = site["random_checkout"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_checkout
Scenario: End to end test : All pages on <%= site["pretty_name"] %> from home page to checkout page are tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    When one or more random products are added to basket using link filter: 
    <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
    And I pause for 5 seconds
    And I go to the basket page 
    <%= extra_steps_rule(page["extra_steps"]) %>
    Then it should be tracked as a Checkout page
<% end %>
<% end %>

<% if site["random_order"] %>
#
# End to end test - order 
#
<% page = site["random_order"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_order
Scenario: End to end test: All pages on <%= site["pretty_name"] %> from home page to order confirmation are tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    When one or more random products are added to basket using link filter: 
    <% site["product_link_filter"].each do |link_filter| %>|<%= link_filter %>|<% end %>
    And I pause for 5 seconds
    And I go to the checkout page 
    <%= extra_steps_rule(page["extra_steps"]) %>
    Then it should be tracked as a Order page
<% end %>
<% end %>

<% if site["category_menu"] && site["test_all_categories"] == true %>
<% page = site["home_page"] %>
#
# All category pages
#
<% if page["ignore"] %>
@ignore
<% end %>
@all_categories
Scenario: All <%= site["pretty_name"] %> category pages are tracked correctly
    Given I am on the <%= site["site_name"] %> home page
    Then all categories should be tracked as Category pages except:
    <% site["category_menu_exclude"].each do |excluded_category| %>
    |<%= excluded_category %>|
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





