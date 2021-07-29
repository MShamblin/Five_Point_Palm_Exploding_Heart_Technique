-- A SELECT statement that computes the age of an invoice 

SELECT InvoiceDate, 
	GETDATE() AS 'Today''s Date', 
	DATEDIFF(day, InvoiceDate, GETDATE()) AS Age 
FROM Invoices;