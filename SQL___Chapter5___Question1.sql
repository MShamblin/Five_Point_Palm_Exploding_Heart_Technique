SELECT COUNT(*) AS "Number of Instructors",
    AVG(AnnualSalary) AS "Annual Salary"
FROM Instructors
WHERE Status = 'F'

--1.	Write a SELECT statement that returns these columns:
--The count of the number of instructors in the Instructors table
--The average of the AnnualSalary column in the Instructors table
--Include only those rows where the Status column is equal to “F” (Fulltime).
--Insert one screen capture here that shows a single query with result that meets all of the above requirements (select, sort, and return).
