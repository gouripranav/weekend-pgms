Feature: reqres website
Scenario: perform get operation of reqres
   
   Given url "https://reqres.in/api/users/2"
   When method GET
   Then status 200
   And print response
   
   Scenario: perform post operation
   Given url "https://reqres.in/api/users"
   And request {"name":"Gouri","job":"api"}
   When method POST
   Then status 201
   And print response
    