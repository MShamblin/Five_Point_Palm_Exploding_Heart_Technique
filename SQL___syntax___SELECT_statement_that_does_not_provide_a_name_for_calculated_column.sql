-- A SELECT statement that doesn’t provide a name for a calculated column 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, 
	InvoiceTotal - PaymentTotal - CreditTotal 
FROM Invoices;