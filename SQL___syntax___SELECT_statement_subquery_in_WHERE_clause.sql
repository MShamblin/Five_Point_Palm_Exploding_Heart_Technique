-- A SELECT statement that uses a subquery in the WHERE clause 

	SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
	FROM Invoices 
	WHERE InvoiceTotal > 
		(SELECT AVG(InvoiceTotal) 
		FROM Invoices) 
    ORDER BY InvoiceTotal;