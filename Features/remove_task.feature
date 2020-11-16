Feature: Remove a task from a course to do list

As a student
I remove an unnecessary task from my course to do list
So I can forget about it.

Background:
  Given the service is running

Scenario Outline: remove a task from a course to do list (Normal Flow)

  Given a task <task> already exists
  And there is a course <course>
  And course <course> has task <task>
  When the task <task> is removed from course <course>
  Then course <course> does not have task <task>

Examples:
  | task | course |
  | 3 | 3 |
  | 2 | 1 |

Scenario Outline: delete a task (Alternate Flow)

  Given a task <task> already exists
  And there is a course <course>
  And course <course> has task <task>
  When the task <task> is deleted
  Then course <course> does not have task <task>

Examples:
  | task | course |
  | 1 | 3 |
  | 3 | 1 |

Scenario Outline: use invalid id to remove a task (Error Flow)

  Given a task <task> already exists
  And there is a course <course>
  And course <course> does not have task <task>
  When the task <task> is removed from course <course>
  Then a "404 Not Found" message is sent
  And course <course> does not have task <task>

Examples:
  | task | course |
  | 1 | 3 |
  | 3 | 1 |

Scenario Outline: remove a task from an invalid course (Error Flow)

  Given a task <task> already exists
  And there is a course <course>
  And course <course> does not have task <task>
  When the task <task> is removed from course <course>
  Then a "404 Not Found" message is sent
  And course <course> does not have task <task>

  Examples:
    | task | course |
    | 1 | 3 |
    | 3 | 2 |
