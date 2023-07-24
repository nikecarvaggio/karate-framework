@ignore
Feature: Put user on requests


  Background:
    * url "https://petstore.swagger.io"
    * path "/v2/user/"+username
  @UpdateNameEmailUser
  Scenario: Update user with Put

    Given request {'id':'#(id)', 'username': '#(username)', 'firstName': '#(firstName)', 'lastName': '#(lastName)', 'email': '#(email)', 'password': '#(password)', 'phone': '#(phone)', 'userStatus': '#(userStatus)' }

    When method put
    Then status 200