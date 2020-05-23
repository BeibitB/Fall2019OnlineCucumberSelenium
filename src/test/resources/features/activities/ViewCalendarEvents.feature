@view_calendar_events
Feature: View all calendar events
  As a user i want to be able to see all calendar events as a table

  Scenario: User permissions
    Given user on the log in page
    When user log in as sales manager
    When user navigate to "Activities"  and "Calendar Events"
    Then View Per Page menu should have following options
      | 10  |
      | 25  |
      | 50  |
      | 100 |