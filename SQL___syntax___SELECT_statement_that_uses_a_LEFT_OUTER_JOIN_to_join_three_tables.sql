-- A SELECT statement that joins the three tables using left outer joins 
	SELECT DeptName, LastName, ProjectNo 
	FROM Departments 
		LEFT JOIN Employees 
			ON Departments.DeptNo = Employees.DeptNo 
		LEFT JOIN Projects 
			ON Employees.EmployeeID = Projects.EmployeeID 
    ORDER BY DeptName, LastName, ProjectNo;