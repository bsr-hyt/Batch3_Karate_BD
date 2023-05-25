Feature: using match keyword

    #how to make assertions with Karate
  Scenario: some matching example
    * def name = "Recep Acar"
    * match name == "Recep Acar"
    * match name != "Eren"

  @match
  Scenario: more matching example
    * def employee =
      """
      {
      "firstName": "Bülent",
      "salary": 50000,
      "active": true
      }
      """
    * match employee.firstName == "Bülent"
    * match employee.salary == 50000
    * match employee.active == true


  Scenario: fuzzy matching
    * def employee =
      """
      {
      "firstName": "Bülent",
      "salary": 50000,
      "active": true
      }
      """
    * match employee.firstName == "#string"
    * match employee.salary == "#number"
    * match employee.active == "#boolean"
    #verify that firstName is exist --> o şey mevcut mu değil mi
    * match employee.firstName == "#present"
    #employee içerisinde lastname diye bir keyword yok.
    * match employee.lastName == "#notpresent"

  @fuzzy
  Scenario: contains matching
    * def students =
      """
      [
      {
      "name": 'Emre',
      "salary": 41500
      }
      {
      "name": "Büşra",
      "salary": 42000
      }
      ]
      """

    #how to length array
    * def lengthOfArray = students.length
    * print lengthOfArray
    * match lengthOfArray == 2
    * match students contains {"name": 'Emre', "salary": 41500}

