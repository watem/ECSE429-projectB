Feature: Adjust a task's priority

As a student
I want to adjust the priority of a task
To help better manage my time.

Background:
Given the service is running
And there are HIGH, MEDIUM, and LOW priorities

Scenario Outline: change the priority of a task from another priority (Normal Flow)

Given a task <task> already exists
And task <task> has priority <priority1>
When task <task> is given priority <priority2>
Then task <task> has priority <priority2>

Scenario Outline: change the priority of a task from the same priority (Alternate Flow)

Given a task <task> already exists
And task <task> has priority <priority>
When task <task> is given priority <priority>
Then task <task> has priority <priority>

Scenario Outline: change the priority of a task to a priority that does not exist (Error Flow)

Given a task <task> already exists
And task <task> has priority <priority>
When task <task> is given priority <invalidPriority>
Then a "400 Bad Request" message is sent
Then task <task> has priority <priority>

Scenario Outline: change the priority of a task that does not exist (Error Flow)

Given a task <task> does not exist
When task <task> is given priority <priority>
Then a "400 Bad Request" message is sent
