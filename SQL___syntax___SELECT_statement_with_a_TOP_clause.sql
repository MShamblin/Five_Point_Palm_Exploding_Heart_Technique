-- A SELECT statement with a TOP clause 

SELECT TOP 5 VendorID, InvoiceTotal 
FROM Invoices 
ORDER BY InvoiceTotal DESC;