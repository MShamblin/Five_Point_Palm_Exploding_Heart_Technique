'A SELECT statement that joins data from the Vendors and Invoices tables 
 
SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal 
FROM Vendors INNER JOIN Invoices 
    ON Vendors.VendorID = Invoices.VendorID 
WHERE InvoiceTotal >= 500
ORDER BY VendorName, InvoiceTotal DESC; 


''
Concepts 
    • A join lets you combine data from two or more tables into a single result set. 
    • The most common type of join is an inner join. This type of join returns rows from 
        both tables only if their related columns match.
    • An outer join returns rows from one table in the join even if the other table doesn’t 
        contain a matching row.'

