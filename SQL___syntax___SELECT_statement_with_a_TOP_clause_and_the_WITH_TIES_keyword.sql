-- A SELECT statement with a TOP clause and the WITH TIES keyword 

SELECT TOP 5 WITH TIES VendorID, InvoiceDate 
FROM Invoices 
ORDER BY InvoiceDate ASC;