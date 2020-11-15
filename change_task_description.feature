Feature: Change a task's description

As a student
I want to change a task description
To better represent the work to do.

Background:
Given the service is running

Scenario Outline: give a task a valid description (Normal Flow)

Given a task <task> already exists
And task <task> does not have a description
When task <task> is given a new description <description>
Then task <task> has description <description>

Scenario Outline: change the valid description of a task (Alternate Flow)

Given a task <task> already exists
And task <task> has description <description>
When task <task> is given a new description <description2>
Then task <task> has description <description2>

Scenario Outline: give an invalid task a description (Error Flow)

Given a task <task> does not exists
When task <task> is given a new description <description>
Then a "404 Not Found" message is sent
