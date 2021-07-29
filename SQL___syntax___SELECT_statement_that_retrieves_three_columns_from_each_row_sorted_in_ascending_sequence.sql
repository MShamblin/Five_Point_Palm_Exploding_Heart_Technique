-- A SELECT statement that retrieves three columns from each row, sorted in ascending sequence by invoice total 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
FROM Invoices 
ORDER BY InvoiceTotal;