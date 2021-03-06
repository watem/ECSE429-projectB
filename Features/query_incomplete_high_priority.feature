Feature: Query all high priority incomplete tasks in a class

As a student
I query all incomplete HIGH priority tasks from all my classes
To identity my short-termgoals.

Background:
Given the service is running
And there are HIGH, MEDIUM, and LOW priorities

Scenario Outline: get all high priority incomplete tasks of a class (Normal Flow)

  Given a incomplete high priority task <task1>
  And a incomplete high priority task <task2>
  And a complete high priority task <task3>
  And a incomplete medium priority task <task4>
  And there is a course <course>
  And course <course> has task <task1>
  And course <course> has task <task2>
  And course <course> has task <task3>
  And course <course> has task <task4>
  When all incomplete high priority tasks of course <course> are queried
  Then a list of task <task1> and task <task2> without task <task3> or task <task4> is returned

  Examples:
    | course | task1 | task2 | task3 | task4 |
    | 1 | 1 | 2 | 3 | 4 |
    | 3 | 3 | 2 | 4 | 1 |

Scenario Outline: get all high priority incomplete tasks of a class when they are all complete (Alternate Flow)

  Given a complete high priority task <task1>
  And a complete high priority task <task2>
  And a incomplete medium priority task <task3>
  And there is a course <course>
  And course <course> has task <task1>
  And course <course> has task <task2>
  And course <course> has task <task3>
  When all incomplete high priority tasks of course <course> are queried
  Then an empty list is returned

  Examples:
    | course | task1 | task2 | task3 |
    | 2 | 1 | 2 | 3 |
    | 3 | 3 | 2 | 4 |

Scenario Outline: get all high priority incomplete tasks of a class when they are all low priority (Alternate Flow)

  Given a incomplete low priority task <task1>
  And a incomplete low priority task <task2>
  And a complete low priority task <task3>
  And a incomplete low priority task <task4>
  And there is a course <course>
  And course <course> has task <task1>
  And course <course> has task <task2>
  And course <course> has task <task3>
  And course <course> has task <task4>
  When all incomplete high priority tasks of course <course> are queried
  Then an empty list is returned

  Examples:
    | course | task1 | task2 | task3 | task4 |
    | 1 | 1 | 2 | 3 | 4 |
    | 3 | 3 | 2 | 4 | 1 |

Scenario Outline: get all high priority incomplete tasks of a class that does not exist (Error Flow)

  Given a incomplete high priority task <task1>
  And a incomplete high priority task <task2>
  And a complete high priority task <task3>
  And a incomplete medium priority task <task4>
  And there is not a course <course>
  When all incomplete high priority tasks of course <course> are queried
  Then a "404 Not Found" message is sent

  Examples:
    | course | task1 | task2 | task3 | task4 |
    | 1 | 1 | 2 | 3 | 4 |
    | 3 | 3 | 2 | 4 | 1 |
