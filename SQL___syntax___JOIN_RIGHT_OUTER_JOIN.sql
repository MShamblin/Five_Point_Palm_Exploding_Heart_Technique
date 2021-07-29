-- A right outer join 
	SELECT DeptName, Employees.DeptNo, 
		LastName 
	FROM Departments RIGHT JOIN Employees 
    ON Departments.DeptNo = Employees.DeptNo;