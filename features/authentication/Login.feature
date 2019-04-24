Feature: Login into Application
  As a User
  I want to be able to login in the Application
  So that I am able to use the Application

  Scenario: Login successful
    Given I am a User
    And I have valid account in the system
    When I correctly submit my credentials
    Then I should be logged in

  Scenario: Login unsuccessful - Wrong Credentials
    Given I am a User
    And I have valid account in the system
    When I authenticate with wrong credentials
    Then I should not be able to login
    And I should see an error message

  Scenario: Login unsuccessful - Account does not exist
    Given I am a User
    And I have not a valid account in the system
    When I try to login guessing credentials
    Then I should not be able to login
    And I should see an error message

  Scenario: Login unsuccessful - Missing Credentials
    Given I am a User
    When I do not provide all authentication information
    And I try to login
    Then I should not be able to login
    And I should see an error message