Feature: Pruebas de API

  Background:
    * url 'https://gorest.co.in/public/v2'
    * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

  Scenario: Listar usuarios
    Given path '/users'
    When method get
    Then status 200
    * print response
    And match response contains {"data": "#notnull"}

#  Scenario: Crear usuario
#    Given path '/users'
#    And request {"name": "Samuel Quenta Carvajal","email": "squentac2@bancosol.com.bo","gender": "male","status": "active"}
#    When method post
#    Then status 201
#
#  Scenario: Actualizar usuario
#    Given path '/users/6940539'
#    And request {"name":"Chandran Varma","email":"varma_chandran2@durgan.test","gender":"male","status":"active"}
#    When method patch
#    Then status 200
#
#  Scenario: Eliminar usuario
#    Given path '/users/7247575'
#    When method delete
#    Then status 204
