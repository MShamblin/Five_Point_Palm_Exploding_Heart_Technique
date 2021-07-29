SELECT COUNT(*) Instructor ID,
    DepartmentName AS "Department",
    MAX(AnnualSalary) AS "Highest Salary"
FROM Deparments JOIN Instrcutors
    ON Departments.DepartmentID = Instructors.DepartmentID
GROUP BY DepartmentName

--2.	Write a SELECT statement that returns one row for each department that has instructors with these columns:
--The DepartmentName column from the Departments table
--The count of the instructors in the Instructors table
--The annual salary of the highest paid instructor in the Instructors table
--Sort the result set so the department with the most instructors appears first.
--Insert one screen capture here that shows a single query with result that meets all of the above requirements (select, sort, and return).
