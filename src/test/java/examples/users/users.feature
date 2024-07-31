Feature: Pruebas de API

  Background:
    * url 'https://gorest.co.in/public/v2'
    * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

  Scenario: Listar usuarios
    Given path '/users'
    When method get
    Then status 200

  Scenario: Crear usuario
    Given path '/users'
    And request {"name": "Samuel Quenta Carvajal","email": "squentasdac6@bancosol.com.bo","gender": "male","status": "active"}
    When method post
    Then status 201

  Scenario: Actualizar usuario
    Given path '/users/7232072'
    And request {"name":"Samuel Quenta","email":"sam@durasdgan.test","gender":"male","status":"active"}
    When method patch
    Then status 200

  Scenario: Eliminar usuario
    Given path '/users/7237598'
    When method delete
    Then status 204
