Feature: Kraft tests with token

  Background:
    * def kraftBaseURL = "https://www.krafttechexlab.com/sw/api/v1"
    #point another feature file
    * def authFeature = call read('classpath:src/test/java/com/kraft/features/6_CreateKraftUserAndGetToken.feature')
    #get the required variable from related feature file
    * def accessToken = authFeature.userToken

    Scenario: get user information(kraft)
      #request
      Given url kraftBaseURL + "/user/me"
      Given header token = accessToken
      When method get
      #response
      Then status 200
