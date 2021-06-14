-- A SELECT statement that returns an empty result set 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
FROM Invoices 
WHERE InvoiceTotal > 50000;