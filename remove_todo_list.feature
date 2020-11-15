Feature: Remove a to do list

As a student
I remove a to do list for a class which I am no longer taking
To declutter my schedule.

Background:
Given the service is running

Scenario Outline: remove a project (Normal Flow)

Given there is a <course>
When <course> is removed
Then <course> does not exist

Scenario Outline: deactivate a project (Alternate Flow)

Given there is a <course>
When <course> is deactivated
Then <course> is not active

Scenario Outline: remove a project that does not exist (Error Flow)

Given <incorrectCourse> does not exist
When <course> is removed
Then a "404 Not Found" message is sent
