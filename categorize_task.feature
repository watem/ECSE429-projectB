Feature: Categorize task priority

As a student
I categorize tasks as HIGH, MEDIUM or LOW priority
So I can better manage my time.

Background:
Given the service is running
And there are HIGH, MEDIUM, and LOW priorities

Scenario Outline: Categorize task as High priority (Normal Flow)

Given a <task> without a priority
When the <task> is given a high priority
Then the <task> has the HIGH priority category

Scenario Outline: Categorize task as Medium priority (Alternate Flow)

Given a <task> without a priority
When the <task> is given a medium priority
Then the <task> has the MEDIUM priority category

Scenario Outline: Categorize task as Low priority (Alternate Flow)

Given a <task> without a priority
When the <task> is given a low priority
Then the <task> has the LOW priority category

Scenario Outline: Attempt to categorize task as Invalid priority (Error Flow)

Given a <task> without a priority
When the <task> is given a invalid priority
Then a "404 Not Found" message is sent
And the <task> does not have a category
