<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
@<%= site["site_name"] %>
@sanity
@web
<% if site["integration"] %>
@<%= site["integration"] %>
<% end %>
<% if site["client_tier"] %>
@<%= site["client_tier"] %>
<% end %>
<% if get_alias_for_site(site["site_name"]) != nil %>
@<%= get_alias_for_site(site["site_name"]) %>
<% end %>
Feature: <%= site["pretty_name"] %> Integration
# Tracking/Recommendations Tests 

Background:
<% if site["site_timeout"] %>
  Given the site can take up to <%=site["site_timeout"] %> seconds to load each page.  
<% else %>
  Given I am on the <%= site["site_name"] %> home page
<% if site["needs_SPR"] %>
  And I use the SPR key
<% end %>
<% if site["ab_test_group"] %>
  And I am in an AB group
<% end %> 
<% end %>

<% for page_name in ["home", "category", "product"] %>
<% if site[page_name+"_page"] %>
<% page = site[page_name+"_page"] %>

### Hard coded <%= page_name %> page : <%= page["URL"] %> ###
<% if page["ignore"] %>
@ignore
<% end %>
@<%= page_name %>_page
Scenario: <%= site["pretty_name"] %> <%= page_name %> page is tracked correctly
<% if page_name != "home" %>
 And I go to the <%= page_name %> page
<% end %>
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then it should be tracked as a <%= page_name %> page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>
<% end %>

<% if site["random_product"] %>
### Random product ###
<% page = site["random_product"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_product
Scenario: Randomly visited product page or pages from <%= site["pretty_name"] %> is/are tracked correctly
<% if site["category_menu_preselect"] %>
  And I visit a top navigation page 
<% end %>
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then each randomly selected product should be tracked as a Product page 
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["random_category"] %>
### Random category ###
<% page = site["random_category"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_category
Scenario: A random category page from <%= site["pretty_name"] %> is tracked correctly
<% if site["category_menu_preselect"] %>
  And I visit a top navigation page 
<% end %>
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then each randomly selected category should be tracked as a Category page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["basket_page"] && site["product_page"] %>
### Basket page ###
<% page = site["basket_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@basket_page
Scenario: <%= site["pretty_name"] %> basket page is tracked correctly
  Given I am on the <%= site["site_name"] %> basket page
<% if site["needs_SPR"] or page["needs_SPR"] %>
  And I use the SPR key
<% end %>
<% if site["ab_test_group"] and site["home_page"] %>
  And I am in an AB group
<% end %>
  And I remove all of the products from the basket
  And I go to the product page
<% if site["product_page"]["extra_steps"] %>
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
<% end %>
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  <%= extra_steps_rule(page["extra_steps"]) %>
  Then it should be tracked as a basket page 
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["random_basket"] %>
### Random basket ###
<% page = site["random_basket"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_basket
Scenario: <%= site["pretty_name"] %> basket page is tracked correctly when a random product is added to basket
<% if site["category_menu_preselect"] %>
  And I visit a top navigation page 
<% end %>
  And I add one or more random products to basket 
  And I pause for 2 seconds
  And I go to the basket page
  Then it should be tracked as a basket page 
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["checkout_page"] && site["product_page"] %>
### Checkout page ###
<% page = site["checkout_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@checkout_page
Scenario: <%= site["pretty_name"] %> checkout page is tracked correctly
  And I pause for 10 seconds
<% if site["home_page"]["login_link"] %>
  When I click login
  And I login as "<%= site["username"] %>" using password "<%= site["password"] %>"
<% end %>
  And I go to the basket page
  And I pause for 10 seconds
  And I remove all of the products from the basket
<% if site["login_page"]["extra_steps"] %>
  <%= extra_steps_rule(site["login_page"]["extra_steps"]) %>
<% end %>
  And I go to the product page
<% if site["product_page"]["extra_steps"] %>
  <%= extra_steps_rule(site["product_page"]["extra_steps"]) %>
<% end %>  
  And I add the current product to the basket
  And I pause for 2 seconds
  And I go to the basket page
  And I pause for 10 seconds
  And I click checkout
  And I pause for 2 seconds
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then it should be tracked as a Checkout page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if site["searchresults_page"] %>
### Search page ###
<% page = site["searchresults_page"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@search_page
Scenario: <%= site["pretty_name"] %> search results page is tracked correctly
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>  
  When I search for "<%= site["valid_search_term"] %>"
  And I pause for 5 seconds
  Then it should be tracked as a search results page
  <%= expect_recs_rule(page["expected_recs"]) %>
<% end %>

<% if page["zerosearch_recs"] %>
### Zero search page ###
@zero_search_page
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: <%= site["pretty_name"] %> zero search recommendations are shown
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>   When I search for "<%= site["zero_search_term"] %>"
  And I pause for 5 seconds
  Then it should be tracked as a search results page
  <%= expect_recs_rule(page["zerosearch_recs"]) %>
<% end %>

<% if site["random_checkout"] %>
### End to end test - Checkout ###
<% page = site["random_checkout"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_checkout
Scenario: End to end test : All pages on <%= site["pretty_name"] %> from home page to checkout page are tracked correctly
<% if site["category_menu_preselect"] %>
  And I visit a top navigation page 
<% end %>
  And I add one or more random products to basket
  And I pause for 5 seconds
  And I go to the basket page 
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then it should be tracked as a Checkout page
<% end %>
<% end %>

<% if site["random_order"] %>
### End to end test - Order ###
<% page = site["random_order"] %>
<% if site["category_menu"] %>
<% if page["ignore"] %>
@ignore
<% end %>
@random_order
Scenario: End to end test: All pages on <%= site["pretty_name"] %> from home page to order confirmation are tracked correctly
<% if site["category_menu_preselect"] %>
  And I visit a top navigation page 
<% end %>
  And I add one or more random products to basket 
  And I pause for 5 seconds
  And I go to the checkout page 
<% if page["extra_steps"] %>
  <%= extra_steps_rule(page["extra_steps"]) %>
<% end %>
  Then it should be tracked as a Order page
<% end %>
<% end %>

<% if site["category_menu"] && site["test_all_categories"] == true %>
<% page = site["home_page"] %>
### All category pages ###
<% if page["ignore"] %>
@ignore
<% end %>
@all_categories
Scenario: All <%= site["pretty_name"] %> category pages are tracked correctly
<% if site["category_menu_preselect"] %>
<% site["num_of_category_menu_preselect_items"].times  do |page_index| %>
  And I visit the top navigation page with index: 
  |<%= page_index %>|
<% if site["categories_to_exclude"] %>
  Then all categories except the categories that match the exclusion criteria :"<%= site["categories_to_exclude"]*', ' %>" should be tracked as Category pages
<% else %>
  Then all categories should be tracked as Category pages	
<% end %>
<% end %>
<% else %>
<% if site["categories_to_exclude"] %>
  Then all categories except the categories that match the exclusion criteria :"<%= site["categories_to_exclude"]*', ' %>" should be tracked as Category pages
<% else %>
  Then all categories should be tracked as Category pages	
<% end %>
<% end %>
<% end %>

<% if site["has_content"] %>
<% page = site["home_page"] %>
### SMART-content tests ###
<% if page["ignore"] %>
@ignore
<% end %>
Scenario: SMART-content links work on on <%= site["pretty_name"] %> home page
  And I click the first SMART-content creative image
  Then it should be tracked as a category page
<% end %>





