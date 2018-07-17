Feature:
  As a user
  I want to login with valid credentials

  Background:
    Enter the application URL to login

    @Both valid username and password

    Scenario:
      When Tap on username field
      And I enter the valid user name
      |username|
      |user    |
      When Tap on password field
      And I enter the valid password
      |password|
      |12345678|
      When I tap on the login button
      Then select organization screen should appear

    @Both valid username and invalid password

  Scenario:
    When Tap on username field
    And I enter the valid user name
      |username|
      |user    |
    When Tap on password field
    But I enter the invalid password
      |password|
      |12345678|
    When I tap on the login button
    Then Alert should appear as "Sorry, unable to sign in"

  @Both invalid username and valid password

  Scenario:
    When Tap on username field
    And I enter the invalid user name
      |username|
      |user    |
    When Tap on password field
    But I enter the valid password
      |password|
      |12345678|
    When I tap on the login button
    Then Alert should appear as "Sorry, unable to sign in"



  @Both invalid username and invalid password

  Scenario:
    When Tap on username field
    And I enter the invalid user name
      |username|
      |user    |
    When Tap on password field
    And I enter the invalid password
      |password|
      |12345678|
    When I tap on the login button
    Then Alert should appear as "Sorry, unable to sign in"
