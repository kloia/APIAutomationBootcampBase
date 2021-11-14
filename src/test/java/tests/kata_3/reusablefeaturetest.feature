Feature: reusable feature files tests

  Background:
    Given url baseUrl

@regression @smoke
    Scenario: call post feature
      * def callToPost = call read('classpath:callers/caller.feature@name=post')
      * match callToPost.responseStatus == 200
      * print callToPost.response
@smoke
    Scenario: call get feature
      * def myID = 250
      * def callToGet = call read('classpath:callers/caller.feature@name=get'){id: #(myID)}
      * match callToGet.response.id == myID
