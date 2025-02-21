-- Problem: 
-- Find all the classes that have at least five students.

-- Given the table "Courses" with the following columns:
-- student (varchar): The name of the student.
-- class (varchar): The name of the class the student is enrolled in.
--
-- Each row indicates a student and the class they are enrolled in.
-- (student, class) is the primary key for the table.

-- The query should return a list of all classes that have at least five students.
-- Return the result in any order.

-- SQL Query:

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5;

-- Explanation:
-- The query groups the students by class, counts the number of students in each class,
-- and returns only those classes that have five or more students.
