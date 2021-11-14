Feature: My first kata tests



  Scenario: first print task
    * print 'Hello World!'
    * karate.log("my first log!")


  Scenario: variables printing
    * def myVar = "Hello World"
    * def mySecondVar = 15
    * print myVar, mySecondVar

  Scenario: config print task
    * print appId

  Scenario: printing JSON file
    * def myJson =
    """
    {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
    """
    * print myJson