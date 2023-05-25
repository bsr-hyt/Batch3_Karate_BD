Feature: Welcome to Karate

    #hoe to print text to console
    #Karate print keywordu ile yazdırır.
  Scenario: how to print
    Given print "Hello World"
    When print 'an other print'
    Then print 'only print'


    # * --> represent given when then(Given When Then yerine * yazabilirsin)
    # ',' --> concatenating two strings with adding a spcae
  Scenario: more printing
    Given print "some words to print"
    * print "my name is" + ' karate kid'
    * print "my name is","karate kid"
    * print 2+2


    #how to define a variable
    #def is common keyword for variables (String, number, boolean, etc...)
    # String name = Mike --> def name = 'Mike
  Scenario: variables
    * def name = 'Mike'
    * print "my name is",name
    * def age = 20
    * print name,'is',age


    #json object oluşturduk burada; def student = {'name': "Ferid", "owes_tuition": false}
    #karate, api yı otomatize etmek için ikinci bir yoludur; api da json dönüyordu hatırlarsan.
  Scenario: difficult parameters
    * def student = {'name': "Ferid", "owes_tuition": false}
    * print student
    * print student.name
    * print student.owes_tuition


    #how to create json object easily
    #jsonı oluşturmanın farklı bir yolu daha
  Scenario: json object - 2
    * def student =
      """
      {
      "firstName" : "Cengiz",
      "lastName": "Yavaş",
      "salary" : 45000
      }
      """
    * print student.firstName
    * print student.lastName
    * print student.salary


  Scenario: json object - 3
    * def gorestUser =
    """
     {
        "id": 2139749,
        "name": "Swapnil Chopra DVM",
        "email": "swapnil_dvm_chopra@mann-cummerata.test",
        "gender": "male",
        "status": "inactive"
    }
     """
    * print gorestUser.id
    * print gorestUser.name
    * print gorestUser.email
    * print gorestUser.gender
    * print gorestUser.status

  @variable
  Scenario: json array objects
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
    * print students
      #how to reach firstname
    * print students[0].name
      #how to reach second salary
    * print students[1].salary








