-- A full outer join 
	SELECT DeptName, Departments.DeptNo, 
		Employees.DeptNo, LastName 
	FROM Departments FULL JOIN Employees 
    ON Departments.DeptNo = Employees.DeptNo;