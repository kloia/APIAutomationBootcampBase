Feature: kata 2 simple tests

  Scenario: reading data from json
    * def myVar = read('classpath:data/myJson.json')
    * print myVar


  Scenario: reading data from json and set new value
    * def myVar = read('classpath:data/myJson.json')
    * set myVar.category.name = 'my_name'
    * print myVar


  Scenario Outline: printing table variables
    * print id
    Examples:
      | id  |
      | 250 |
      | 251 |
      | 252 |

