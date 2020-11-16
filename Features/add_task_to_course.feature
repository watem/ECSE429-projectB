Feature: Add task to a course to do list

As a student
I add a task to a course to do list
So I can remember it.

Background:
  Given the service is running

Scenario Outline: a new task is created in the todo list (Normal Flow)

  Given there is a course <course>
  And there is a <title>, and <description> for a task <task>
  When the task is created with id <task>, title <title>, and description <description>
  Then the task <task> is in the course <course>

Examples:
  | course | task | title | description |
  | 1 | 3 | 429P2 | finish the 429 project |
  | 3 | 4 | a new task | complete a new task |

Scenario Outline: a preexisting task is added to the todo list (Alternate Flow)

  Given there is a course <course>
  And a task <task> already exists
  When the task <task> is added to the course <course>
  Then the task <task> is in the course <course>

  Examples:
    | task | course |
    | 1 | 3 |
    | 2 | 1 |


Scenario Outline: a task is added to a course that does not exist (Error Flow)

  Given a task <task> already exists
  And there is a course <course>
  But course <incorrectCourse> does not exist
  When the task <task> is added to the <incorrectCourse>
  Then a "404 Not Found" message is sent
  And course <course> does not have task <task>

  Examples:
    | task | course | incorrectCourse |
    | 1 | 2 | 3 |
    | 2 | 1 | 10 |
    | 2 | 2 | 5 |

Scenario Outline: the course has a task that does not exist added to it (Error Flow)

  Given a task <task> already exists
  And there is a course <course>
  But task <incorrectTask> does not exist
  When the task <incorrectTask> is added to the course <course>
  Then a "404 Not Found" message is sent
  And course <course> does not have task <task>
  And course <course> does not have task <incorrectTask>

  Examples:
    | task | course | incorrectTask |
    | 1 | 2 | 3 |
    | 2 | 1 | 10 |
    | 2 | 2 | 5 |
