-- LeetCode 180: Consecutive Numbers


-- Table: Logs
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | num         | varchar |
-- +-------------+---------+
-- id is the primary key and autoincrements from 1.

-- Task:
-- Find all numbers that appear at least three times consecutively
-- Return the result table with a single column: ConsecutiveNums.


-- Answer
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l2.id = l1.id - 1
JOIN Logs l3 ON l3.id = l1.id - 2
WHERE l1.num = l2.num
  AND l2.num = l3.num;
