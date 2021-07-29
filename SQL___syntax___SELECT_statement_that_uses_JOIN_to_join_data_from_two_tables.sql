--- A SELECT statement that joins data from the Vendors and Invoices tables 

SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal 
FROM Vendors INNER JOIN Invoices 
    ON Vendors.VendorID = Invoices.VendorID 
WHERE InvoiceTotal >= 500
ORDER BY VendorName, InvoiceTotal DESC;
