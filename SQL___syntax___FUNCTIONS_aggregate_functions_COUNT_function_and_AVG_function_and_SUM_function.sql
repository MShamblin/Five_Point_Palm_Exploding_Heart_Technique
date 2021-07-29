--  A summary query that uses the COUNT(*), AVG, and SUM functions 

	SELECT 'After 7/1/2019' AS SelectionDate, COUNT(*) AS NumberOfInvoices, 
		AVG(InvoiceTotal) AS AverageInvoiceAmount, 
		SUM(InvoiceTotal) AS TotalInvoiceAmount
	FROM Invoices 
    WHERE InvoiceDate > '2019-07-01'; 