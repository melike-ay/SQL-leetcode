-- LeetCode 626: Exchange Seats

-- Table: Seat
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | student     | varchar |
-- +-------------+---------+
-- id is the primary key and starts from 1, incrementing continuously.

-- Task:
-- Swap the seat IDs of every two consecutive students.
-- If the number of students is odd, the last student remains in place.
-- Return the result table ordered by id in ascending order.

SELECTs
    CASE
        WHEN id % 2 = 1 AND id = (SELECT COUNT(*) FROM Seat) THEN id
        WHEN id % 2 = 1 THEN id + 1
        ELSE id - 1
    END AS id, student
FROM Seat
ORDER BY id ASC;
