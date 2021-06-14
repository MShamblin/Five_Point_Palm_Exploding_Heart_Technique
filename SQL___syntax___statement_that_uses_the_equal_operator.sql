-- A SELECT statement that uses the equal operator (an older technique) 
SELECT [Invoice Number] = InvoiceNumber, Date = InvoiceDate, 
    Total = InvoiceTotal 
FROM Invoices;