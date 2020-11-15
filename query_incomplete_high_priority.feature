Feature: Query all high priority incomplete tasks in a class

As a student
I query all incomplete HIGH priority tasks from all my classes
To identity my short-termgoals.

Background:
Given the service is running

Scenario Outline: get all high priority incomplete tasks of a class (Normal Flow)

Given a incomplete high priority task <task1>
And a incomplete high priority task <task2>
And a complete high priority task <task3>
And a incomplete medium priority task <task4>
And there is a <course>
And <course> has <task1>
And <course> has <task2>
And <course> has <task3>
And <course> has <task4>
When all incomplete tasks of <course> are queried
Then a list of <task1> and <task2> without <task3> or <task4> is returned

Scenario Outline: get all high priority incomplete tasks of a class when they are all complete (Alternate Flow)

Given a complete high priority task <task1>
And a complete high priority task <task2>
And a incomplete medium priority task <task3>
And there is a <course>
And <course> has <task1>
And <course> has <task2>
And <course> has <task3>
When all incomplete tasks of <course> are queried
Then an empty list is returned

Scenario Outline: get all high priority incomplete tasks of a class when they are all low priority (Alternate Flow)

Given a incomplete low priority task <task1>
And a incomplete low priority task <task2>
And a complete low priority task <task3>
And a incomplete low priority task <task4>
And there is a <course>
And <course> has <task1>
And <course> has <task2>
And <course> has <task3>
And <course> has <task4>
When all incomplete tasks of <course> are queried
Then an empty list is returned

Scenario Outline: get all high priority incomplete tasks of a class that does not exist (Error Flow)

Given a incomplete high priority task <task1>
And a incomplete high priority task <task2>
And a complete high priority task <task3>
And a incomplete medium priority task <task4>
And there is not a <course>
When all incomplete tasks of <course> are queried
Then a "404 Not Found" message is sent
