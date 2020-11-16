Feature: Change a task's description

As a student
I want to change a task description
To better represent the work to do.

Background:
  Given the service is running

Scenario Outline: give a task a valid description (Normal Flow)

  Given a task <task> already exists
  And task <task> does not have a description
  When task <task> has its description set to <description>
  Then task <task> has description <description>

  Examples:
    | task | description |
    | 1 | a description |
    | 3 | due in by monday |


Scenario Outline: change the valid description of a task (Alternate Flow)

  Given a task <task> already exists
  And task <task> has description <description>
  When task <task> has its description set to <description2>
  Then task <task> has description <description2>

  Examples:
    | task | description | description2 |
    | 1 | a description | a new description |
    | 3 | due in by monday | delayed to wednesday |

Scenario Outline: give an invalid task a description (Error Flow)

  Given a task <task> does not exists
  When task <task> has its description set to <description>
  Then a "404 Not Found" message is sent

  Examples:
    | task | description |
    | 1 | a description |
    | 3 | due in by monday |
