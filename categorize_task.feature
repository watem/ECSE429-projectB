Feature: Categorize task priority

As a student
I categorize tasks as HIGH, MEDIUM or LOW priority
So I can better manage my time.

Background:
Given NutriGo user is logged into the application

Scenario:  (Normal Flow)

Given
And food items have been created
When the user requests to query food items in the system
Then the system displays a list of all food items

Scenario:  (Alternate Flow)

Given NutriGo user is logged into the application
And food items have been created
When the user requests to query food items in the system
Then the system displays a list of all food items
And the user then enters a valid search filter to filter the results
Then the system filters the current results to only those containing the search filters

Scenario:  (Alternate Flow)

Given NutriGo user is logged into the application
And food items have been created
When the user enters a valid search filter to filter the results
When the user requests to query food items in the system
Then the system displays a list of food items containing the search filters

Scenario:  (Error Flow)

Given NutriGo user is logged into the application
And food items have been created
When the user enters a valid search filter to filter the results
But no food items in the system contain the search filter
And the user requests to query food items in the system
Then the system should see an error message
