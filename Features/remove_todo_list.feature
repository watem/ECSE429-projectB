Feature: Remove a to do list

As a student
I remove a to do list for a class which I am no longer taking
To declutter my schedule.

Background:
  Given the service is running

Scenario Outline: remove a project (Normal Flow)

  Given there is a course <course>
  When course <course> is removed
  Then course <course> does not exist

  Examples:
    | course |
    | 1 |
    | 2 |
    | 3 |

Scenario Outline: deactivate a project (Alternate Flow)

    Given there is a course <course>
    And course <course> active is true
    When course <course> is deactivated
    Then course <course> active is false

    Examples:
      | course |
      | 1 |
      | 2 |
      | 3 |

Scenario Outline: remove a project that does not exist (Error Flow)

  Given course <incorrectCourse> does not exist
  When course <incorrectCourse> is removed
  Then a "404 Not Found" message is sent

  Examples:
    | course |
    | 1 |
    | 2 |
    | 3 |
