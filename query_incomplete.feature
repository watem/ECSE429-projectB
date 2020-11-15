Feature: Query all incomplete tasks in a class

As a student
I query the incomplete tasks for a class I am taking
To help manage my time.

Background:
Given the service is running

# check if a Scenario outline can be mixed with a datatable
Scenario Outline: get all incomplete tasks of a class (Normal Flow)

Given a incomplete task <task1>
And a incomplete task <task2>
And a complete task <task3>
And there is a <course>
And <course> has <task1>
And <course> has <task2>
And <course> has <task3>
When all incomplete tasks of <course> are queried
Then a list of <task1> and <task2> without <task3> is returned

Scenario Outline: get all incomplete tasks when all tasks are completed (Alternate Flow)

Given a complete task <task1>
And a complete task <task2>
And a complete task <task3>
And there is a <course>
And <course> has <task1>
And <course> has <task2>
And <course> has <task3>
When all incomplete tasks of <course> are queried
Then an empty list is returned

Scenario Outline: get all incomplete tasks of a class that does not exist (Error Flow)

Given a incomplete task <task1>
And a incomplete task <task2>
And a complete task <task3>
And there is not a <course>
When all incomplete tasks of <course> are queried
Then a "404 Not Found" message is sent
