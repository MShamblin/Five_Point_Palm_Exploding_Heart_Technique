-- A SELECT statement that joins the three tables using full outer joins 
	SELECT DeptName, LastName, ProjectNo 
	FROM Departments 
		FULL JOIN Employees 
			ON Departments.DeptNo = Employees.DeptNo 
		FULL JOIN Projects 
			ON Employees.EmployeeID = Projects.EmployeeID 
    ORDER BY DeptName;