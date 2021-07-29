-- A SELECT statement that combines an outer and an inner join 
	SELECT DeptName, LastName, ProjectNo 
	FROM Departments 
		JOIN Employees 
			ON Departments.DeptNo = Employees.DeptNo 
		LEFT JOIN Projects 
			ON Employees.EmployeeID = Projects.EmployeeID 
    ORDER BY DeptName;