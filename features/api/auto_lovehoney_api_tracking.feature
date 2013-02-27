@ignore
@lovehoney
@smartapi
Feature: Lovehoney SMART-API tracking

Scenario Outline: Lovehoney Homepage is tracked using SMART-API
    Given I am using SMART-API <version> to access lovehoney
    And I am using client token 
    When I track a home page
    Then I should get an OK status back
    Examples:
    | version |
    | v1      |
    | v1_1    |

Scenario Outline: Product page is tracked using SMART-API
    Given I am using SMART-API <version> to access lovehoney
    And I am using client token 
    When I track a product page
    Then I should get an OK status back
    Examples:
    | version |
    | v1      |
    | v1_1    |

Scenario Outline: Category page is tracked using SMART-API v1
    Given I am using SMART-API <version> to access lovehoney
    And I am using client token 
    When I track a category page
    Then I should get an OK status back
    Examples:
    | version |
    | v1      |
    | v1_1    |

Scenario Outline: Basket page is tracked using SMART-API v1
    Given I am using SMART-API <version> to access lovehoney
    And I am using client token 
    When I track a basket page
    Then I should get an OK status back
    Examples:
    | version |
    | v1      |
    | v1_1    |

Scenario Outline: Checkout page is tracked using SMART-API v1
    Given I am using SMART-API <version> to access lovehoney
    And I am using client token 
    When I track a checkout page
    Then I should get an OK status back
    Examples:
    | version |
    | v1      |
    | v1_1    |

Scenario: Order page is tracked using SMART-API v1.1
    Given I am using SMART-API to access lovehoney
    And I am using client token 
    When I track an order page
    Then I should get an OK status back

Scenario: Search results page is tracked using SMART-API v1.1
    Given I am using SMART-API to access lovehoney
    And I am using client token 
    When I track a search results page
    Then I should get an OK status back