Feature: Adjust a task's priority

As a student
I want to adjust the priority of a task
To help better manage my time.

Background:
Given the service is running
And there are HIGH, MEDIUM, and LOW priorities

Scenario: change the priority of a task from another priority (Normal Flow)

Given
When
Then

Scenario: change the priority of a task from the same priority (Alternate Flow)

Given
When
Then

Scenario: change the priority of a task to a priority that does not exist (Error Flow)

Given
When
Then

Scenario: change the priority of a task that does not exist (Error Flow)

Given
When
Then
