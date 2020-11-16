Feature: Mark a task as done

As a student
I mark a task as done on my course to do list
So I can track my accomplishments.

Background:
  Given the service is running

Scenario Outline: mark a task as done (Normal Flow)

  Given a task <task> already exists
  And task <task> has doneStatus false
  When task <task> has its doneStatus set to true
  Then a "200 OK" message is sent
  And task <task> has a doneStatus of true

  Examples:
    | task |
    | 2 |
    | 3 |

Scenario Outline: mark a task that is already marked as done as done (Alternate Flow)

  Given a task <task> already exists
  And task <task> has doneStatus true
  When task <task> has its doneStatus set to true
  Then a "200 OK" message is sent
  And task <task> has a doneStatus of true

  Examples:
    | task |
    | 1 |
    | 3 |

Scenario Outline: mark non existing task as done (Error Flow)

  Given task <task> does not exist
  When task <task> has its doneStatus set to true
  Then a "404 Not Found" message is sent

  Examples:
    | task |
    | 3 |
    | 2 |

Scenario Outline: mark task as invalid input (Error Flow)

  Given a task <task> exists
  When the task <task> has its doneStatus set to <invalidSymbol>
  Then a "400 Bad Request" message is sent
  And task <task> has a doneStatus of false

  Examples:
    | task | invalidSymbol |
    | 3 | \0 |
    | 1 | done |
