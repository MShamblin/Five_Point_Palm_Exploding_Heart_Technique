-- A cross join that uses the explicit syntax 
		SELECT Departments.DeptNo, DeptName, EmployeeID, LastName 
		FROM Departments CROSS JOIN Employees 
        ORDER BY Departments.DeptNo; 