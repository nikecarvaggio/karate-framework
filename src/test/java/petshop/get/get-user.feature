@ignore
Feature: Get user on requests

  @SearchUser
  Scenario: Get a user
    Given url "https://petstore.swagger.io" + "/v2/user/" + username
    When method get
    Then status 200
    And def userData = response