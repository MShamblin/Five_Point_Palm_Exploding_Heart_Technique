-- A cross join that uses the implicit syntax 
	
    SELECT Departments.DeptNo, DeptName, EmployeeID, LastName 
	FROM Departments, Employees 
    ORDER BY Departments.DeptNo;