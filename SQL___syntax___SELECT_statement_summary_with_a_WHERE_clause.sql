A summary query with a WHERE clause 
	SELECT InvoiceDate, COUNT(*) AS InvoiceQty, SUM(InvoiceTotal) AS InvoiceSum 
	FROM Invoices
	WHERE InvoiceDate BETWEEN '2020-01-01' AND '2020-01-31' 
	GROUP BY InvoiceDate 
	HAVING COUNT(*) > 1
		AND SUM(InvoiceTotal) > 100 
    ORDER BY InvoiceDate DESC;