-- The syntax of the WHERE clause with an IN phrase 
-- An IN phrase with a subquery 


WHERE VendorID IN 
    (SELECT VendorID 
    FROM Invoices 
    WHERE InvoiceDate = '2019-12-01')