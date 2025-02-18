-- Problem: Total Time Spent by Employees in Office

-- Given a table `Employees` that records the entry and exit times of employees,
-- calculate the total time in minutes spent by each employee on each day.
-- An employee can enter and leave more than once in a single day. 

-- Input Table:
-- | Column Name | Type |
-- |-------------|------|
-- | emp_id      | int  |
-- | event_day   | date |
-- | in_time     | int  |
-- | out_time    | int  |

-- The primary key is a combination of (emp_id, event_day, in_time).

-- SQL Solution:
SELECT event_day AS day, emp_id, SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY event_day, emp_id;

-- Explanation:
-- The query selects event_day (renamed as day) and emp_id.
-- SUM(out_time - in_time) calculates the total time spent in the office for each entry and exit.
-- The GROUP BY clause aggregates the results by both event_day and emp_id.

-- Example:
-- Input:
-- | emp_id | event_day | in_time | out_time |
-- |--------|-----------|---------|----------|
-- | 1      | 2020-11-28 | 4       | 32       |
-- | 1      | 2020-11-28 | 55      | 200      |
-- | 1      | 2020-12-03 | 1       | 42       |
-- | 2      | 2020-11-28 | 3       | 33       |
-- | 2      | 2020-12-09 | 47      | 74       |

-- Output:
-- | day        | emp_id | total_time |
-- |------------|--------|------------|
-- | 2020-11-28 | 1      | 173        |
-- | 2020-11-28 | 2      | 30         |
-- | 2020-12-03 | 1      | 41         |
-- | 2020-12-09 | 2      | 27         |

-- Notes:
-- `in_time` and `out_time` are between 1 and 1440.
-- The query ensures correct aggregation even if the employee enters and leaves multiple times within a single day.