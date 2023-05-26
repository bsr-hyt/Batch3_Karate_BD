Feature: get user token

  Background:
    * def kraftBaseURL = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Create a new user with Java and get token
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
    Given url kraftBaseURL
    Given path "/allusers/register"
    Given request newUser
    When method post
    When status 200
    #more verification
    Then match newUser.name == response.name
    Then match newUser.email == response.email
    Then match response.id == "#number"
    #get token
    * def userToken = response.token



