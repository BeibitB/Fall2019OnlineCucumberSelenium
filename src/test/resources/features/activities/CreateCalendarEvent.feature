@activities
Feature: Create calendar event

  As a user, I want to be able to create calendar event

  Scenario: Create calendar event as sales manager
    Given  user on the log in page
    When user log in as sales manager
    And user navigate to "Activities"  and "Calendar Events"
    Then user clicks on create calendar event button

    And user enters "Meeting discussion" as description
    And user enters "Sprint Retro" as a title

    Then user clocks on save and close button
    And user verifies that title of new calendar event is "Sprint Retro"
    And user verifies that description of new calendar event is "Meeting discussion"
