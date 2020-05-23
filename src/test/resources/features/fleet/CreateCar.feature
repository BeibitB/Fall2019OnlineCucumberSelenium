@create_car
Feature: Create car
  As user, I want to be able to add new cars

  Scenario: Add new car
    Given user on the log in page
    When user log in as sales manager
    Then user navigate to "Fleet"  and "Vehicles"
    And user click on create a car button
    Then user creates a with following info:
      | License Plate | Driver    | Location    | Model Year | Color |
      | SDET          | Pro Racer | Rome, Italy | 2020       | Red   |
    And user verifies that car info is displayed:
      | License Plate | Driver    | Location    | Model Year | Color |
      | SDET          | Pro Racer | Rome, Italy | 2020       | Red   |


    @create_car_ddt
  Scenario Outline: Add new car
    Given user on the log in page
    When user log in as sales manager
    Then user navigate to "Fleet"  and "Vehicles"
    And user click on create a car button
    Then user creates a with following info:
      | License Plate | Driver    | Location    | Model Year | Color |
      | <license_plate> | <driver> | <location> | <model_year> | <color> |
    And user verifies that car info is displayed:
      | License Plate | Driver    | Location    | Model Year | Color |
      | <license_plate> | <driver> | <location> | <model_year> | <color> |

    Examples: cars test data

      | license_plate | driver       | location   | model_year | color  |
      | 000           | pilot        | Washington | 2010       | purple |
      | 123           | test_driver  | New York   | 2022       | black  |
      | 1029          | pilot_driver | Portland   | 2008       | brown  |