-- A query that excludes rows from the first query if they also occur in the second query 
		SELECT CustomerFirst, CustomerLast 
		FROM Customers 
	EXCEPT 
		SELECT FirstName, LastName 
		FROM Employees 
    ORDER BY CustomerLast;