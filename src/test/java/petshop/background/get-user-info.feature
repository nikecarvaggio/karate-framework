@ignore
Feature: Get info user on requests

  @GetUserInfo
  Scenario: Get user info
    Given url "https://petstore.swagger.io" + "/v2/user/" + "carvaggio"
    When method get
    Then status 200