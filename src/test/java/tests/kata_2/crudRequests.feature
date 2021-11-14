Feature: Crud request wtih external files

  Background:
    Given url baseUrl

  Scenario: post request with json
    And path 'pet'
    And def myBody = read('classpath:data/myJson.json')
    And set myBody.name = 'newName'
    And set myBody.id = 2021
    And request myBody
    When method POST
    Then status 200
    And match response == myBody