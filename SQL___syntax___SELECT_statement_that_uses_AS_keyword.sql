-- A SELECT statement that uses the AS keyword (the preferred technique) 

SELECT InvoiceNumber AS [Invoice Number], InvoiceDate AS Date, 
	InvoiceTotal AS Total 
FROM Invoices; 