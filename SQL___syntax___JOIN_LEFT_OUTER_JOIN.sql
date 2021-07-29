-- A left outer join 
	SELECT DeptName, Departments.DeptNo, 
		LastName 
	FROM Departments LEFT JOIN Employees 
    ON Departments.DeptNo = Employees.DeptNo; 