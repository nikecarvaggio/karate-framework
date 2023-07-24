@ignore
Feature: Post user on requests


  Background:
    * url "https://petstore.swagger.io"
    * path "/v2/user/"
  @CreateUser
  Scenario: Create user with Post

    Given request { 'username': '#(username)', 'firstName': '#(firstName)', 'lastName': '#(lastName)', 'email': '#(email)', 'password': '#(password)', 'phone': '#(phone)', 'userStatus': '#(userStatus)' }
    When method post
    Then status 200