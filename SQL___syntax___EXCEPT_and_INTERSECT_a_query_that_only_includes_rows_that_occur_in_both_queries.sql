-- A query that only includes rows that occur in both queries 
		SELECT CustomerFirst, CustomerLast 
		FROM Customers 
	INTERSECT 
		SELECT FirstName, LastName 
        FROM Employees;