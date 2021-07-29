-- A SELECT statement with a TOP clause and the PERCENT keyword
 
SELECT TOP 5 PERCENT VendorID, InvoiceTotal 
FROM Invoices 
ORDER BY InvoiceTotal DESC;