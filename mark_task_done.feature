Feature: Mark a task as done

As a student
I mark a task as done on my course to do list
So I can track my accomplishments.

Background:
Given the service is running

Scenario Outline: mark a task as done (Normal Flow)

Given a <task> already exists
And <task> has doneStatus false
When <task> is marked as done
Then a "200 OK" message is sent
And <task> has a doneStatus of true

Scenario Outline: mark a task that is already marked as done as done (Alternate Flow)

Given a <task> already exists
And <task> has doneStatus true
When <task> is marked as done
Then a "200 OK" message is sent
And <task> has a doneStatus of true

Scenario Outline: mark non existing task as done (Error Flow)

Given <task> does not exist
When <task> is marked as done
Then a "404 Not Found" message is sent

Scenario Outline: mark task as invalid input (Error Flow)

Given a <task> exists
When the <task> is marked as <invalidSymbol>
Then a "400 Bad Request" message is sent
And the <task> is not done
