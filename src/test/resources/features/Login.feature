Feature: Login

  As user, I want to be able to login with username and password
  #Agile story


  #Test Method = Test Case = Scenario

  Scenario: Login as Sales manager and verify that title is Dashboard
    Given user on the landing page
    When user log in as sales manager
    Then user should verify that title is a Dashboard

  Scenario: Login as Store manager and verify that title is Dashboard
    Given user on the landing page
    When user log in as store manager
    Then user should verify that title is a Dashboard