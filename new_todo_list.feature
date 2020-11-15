Feature: Create a new to do list

As a student
I create a to do list for a new class I am taking
So I can manage course work.

Background:
Given the service is running

Scenario Outline: create a new project for a class (Normal Flow)

Given a title <title>, and description <description> for a course
When the class is created with a title <title>, and description <description>
Then there is a course with a title <title>, and description <description>

Scenario Outline: create a new project for an existing class (Alternate Flow)

Given a class with a <title>, and <description> already exists
When the class is created with a title <title>, and description <description>
Then there are two classes with a title <title>, and description <description>

Scenario Outline: create a new project with extra field (Error Flow)

Given a title <title>, and an <invalidField> <invalidFieldValue> for a course
When the class is created with a title <title>, and <invalidField> <invalidFieldValue>
Then a "400 Bad Request" message is sent
And there are no courses with title <title>

# eg, bad escape character in the title
Scenario Outline: create a new project with bad title (Error Flow)

Given a title <badTitle>, and description <description> for a course
When the class is created with a title <title>, and description <description>
Then a "400 Bad Request" message is sent
And there are no courses with title <title>
