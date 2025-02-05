-- Delete Duplicate Emails

-- Table: Person
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | email       | varchar |
-- +-------------+---------+
-- id is the primary key for this table.
-- Each row contains an email. The emails will not contain uppercase letters.

-- Problem: Delete all duplicate emails, keeping only one unique email with the smallest id.

DELETE FROM Person 
WHERE id NOT IN (
    SELECT MIN(id) 
    FROM Person 
    GROUP BY email
);

-- Explanation:
-- 1. I use a subquery to find the smallest id for each unique email.
-- 2. The DELETE statement removes all rows where the id is NOT in the list of minimum ids.
-- 3. This ensures only one record per email remains in the table.

