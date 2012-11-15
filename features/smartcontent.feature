Feature: Smart Content
  In order to get the most out of my shopping experience
  As a website user
  I want to see home page content tailored to me
    
#@search    
#Scenario Outline: Search optimisation
#   Given I am using the <search engine> search engine
#   When I search for "<search>"
#   And I select the <site> homepage from the results
#   Then I should see the <promotion> promotion
#   Examples:
#   | search engine | search             | site      | promotion       |
#   | Google        | lovehoney g-spot   | Lovehoney | G-spot vibrator |
#    | Bing          | lovehoney g-spot   | Lovehoney | G-spot vibrator |
#    | Google        | lovehoney birthday | Lovehoney | 10th Birthday   |
#    | Bing          | lovehoney birthday | Lovehoney | 10th Birthday   |


@ctshirts
Scenario: Content is displayed
    Given I am on the ctshirts homepage
    When I use the "peerius" ctshirts promotion
    Then I should see at least 6 items of SMART-content

@ctshirts
Scenario: Content is not displayed
    Given I am on the ctshirts homepage
    When I use the "myvc" ctshirts promotion
    Then I should see no SMART-content

  
