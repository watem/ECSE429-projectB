Feature: Add task to a course to do list

As a student
I add a task to a course to do list
So I can remember it.

Background:
  Given the service is running

Scenario Outline: a new task is created in the todo list (Normal Flow)

  Given there is a course <course>
  And there is an <id>, <title>, and <description> for a task
  When the task is created with id <id>, title <title>, and description <description>
  Then the task <task> is in the course <course>

Examples:
  | course | id | title | description | course |
  |  |  |  |  |  |
  |  |  |  |  |  |

Scenario Outline: a preexisting task is added to the todo list (Alternate Flow)

  Given there is a course <course>
  And a task <task> already exists
  When the task <task> is added to the course <course>
  Then the task <task> is in the course <course>

  Examples:
    | task | course |
    |  |  |


Scenario Outline: a task is added to a course that does not exist (Error Flow)

  Given a task <task> already exists
  And there is a course <course>
  But course <incorrectCourse> does not exist
  When the task <task> is added to the <incorrectCourse>
  Then a "404 Not Found" message is sent
  And course <course> does not have task <task>

  Examples:
    | task | course | incorrectCourse |
    |  |  |  |

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
    |  |  |  |
