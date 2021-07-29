-- A SELECT statement that uses the CONVERT function 

SELECT 'Invoice: #' + InvoiceNumber 
	+ ', dated ' + CONVERT(char(8), PaymentDate, 1) 
	+ ' for $' + CONVERT(varchar(9), PaymentTotal, 1) 
FROM Invoices;