@login
Feature: Login

  As user, I want to be able to login with username and password
  #Agile story


  #Test Method = Test Case = Scenario

  Background: open login page
    Given user on the log in page


  @sales_manager
  Scenario: Login as Sales manager and verify that title is Dashboard
    When user log in as sales manager
    Then user should verify that title is a Dashboard

  @store_manager
  Scenario: Login as Store manager and verify that title is Dashboard
    When user log in as store manager
    Then user should verify that title is a Dashboard

  @driver
  Scenario: Login as driver and verify that title is Dashboard
    When user logs in as driver
    Then user should verify that title is a Dashboard


    @login_with_parameters
    Scenario: Login with parameters
      When user enters "storemanager85" username and "UserUser123" password
      Then user should verify that title is a Dashboard


  @scenario_outline
  Scenario Outline: User names test
    When user enters "<username>" username and "<password>" password
    Then user name should be "<name>"
    Examples: credentials
      | username        | password    | name             |
      | user187         | UserUser123 | Jerel Vandervort |
      | user200         | UserUser123 | Lonzo Leuschke   |
      | storemanager52  | UserUser123 | Roma Medhurst    |
      | storemanager66  | UserUser123 | Carlos Ernser    |
      | salesmanager125 | UserUser123 | Cleveland Heller |
      | salesmanager140 | UserUser123 | Jameson Paucek   |