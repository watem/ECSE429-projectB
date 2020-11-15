Feature: Remove a task from a course to do list

As a student
I remove an unnecessary task from my course to do list
So I can forget about it.

Background:
Given the service is running

Scenario Outline: remove a task from a course to do list (Normal Flow)

Given a <task> already exists
And there is a <course>
And <course> has <task>
When the <task> is removed from <course>
Then <course> does not have <task>

Scenario Outline: delete a task (Alternate Flow)

Given a <task> already exists
And there is a <course>
And <course> has <task>
When the <task> is deleted
Then <course> does not have <task>

Scenario Outline: use invalid id to remove a task (Error Flow)

Given a <task> already exists
And there is a <course>
And <course> does not have <task>
When the <task> is removed from <course>
Then a "404 Not Found" message is sent
And <course> does not have <task>

Scenario Outline: remove a task from an invalid course (Error Flow)

Given a <task> already exists
And there is a <course>
And <course> does not have <task>
When the <task> is removed from <course>
Then a "404 Not Found" message is sent
And <course> does not have <task>
