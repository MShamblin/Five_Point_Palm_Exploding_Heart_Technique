-- A SELECT statement that uses the modulo operator --
SELECT InvoiceID, 
    InvoiceID / 10 AS Quotient, 
    InvoiceID % 10 AS Remainder 
FROM Invoices 
ORDER BY InvoiceID;