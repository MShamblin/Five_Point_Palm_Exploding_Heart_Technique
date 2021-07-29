-- A summary query that uses the MIN and MAX functions 

	SELECT 'After 7/1/2019' AS SelectionDate, COUNT(*) AS NumberOfInvoices, 
		MAX(InvoiceTotal) AS HighestInvoiceTotal, 
		MIN(InvoiceTotal) AS LowestInvoiceTotal
	FROM Invoices 
    WHERE InvoiceDate > '2019-07-01';