Feature: get user 1

  ##breakpoints are ignored when called as jar
  Scenario: get user 1

    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200