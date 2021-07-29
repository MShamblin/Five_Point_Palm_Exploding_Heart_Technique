-- A SELECT statement that retrieves all invoices between given dates 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
FROM Invoices 
WHERE InvoiceDate BETWEEN '2020-01-01' AND '2020-03-31' 
ORDER BY InvoiceDate;