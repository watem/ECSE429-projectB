Feature: Add task to a course to do list

As a student
I add a task to a course to do list
So I can remember it.

Background:
Given the service is running

Scenario Outline: a new task is created in the todo list (Normal Flow)

Given there is a <course>
And an <id>, <title>, and <description> for a task
When the task is created with <id>, <title>, and <description>
Then the <task> is in the <course>

Scenario Outline: a preexisting task is added to the todo list (Alternate Flow)

Given there is a <course>
And a <task> already exists
When the <task> is added to the <course>
Then the <task> is in the <course>

Scenario Outline: a task is added to a course that does not exist (Error Flow)

Given a <task> already exists
And there is a <course>
But <incorrectCourse> does not exist
When the <task> is added to the <incorrectCourse>
Then a "404 Not Found" message is sent
And <course> does not have <task>

Scenario Outline: the course has a task that does not exist added to it (Error Flow)

Given a <task> already exists
And there is a <course>
But <incorrectTask> does not exist
When the <incorrectTask> is added to the <course>
Then a "404 Not Found" message is sent
And <course> does not have <task>
And <course> does not have <incorrectTask>
