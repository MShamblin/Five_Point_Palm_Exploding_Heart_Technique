"""DELETE - statement_using_a_subquery_and_JOIN_that_deletes_vendors_whose_invoices_total_100_or_less"""

DELETE VendorCopy 
FROM VendorCopy JOIN
        (SELECT VendorID, SUM(InvoiceTotal) AS TotalOfInvoices 
        FROM InvoiceCopy 
        GROUP BY VendorID) AS InvoiceSum 
    ON VendorCopy.VendorID = InvoiceSum.VendorID 
WHERE TotalOfInvoices <= 100;




Description 
	• You can use subqueries and joins in the FROM clause of a DELETE 
        statement to base the delete operation on the data in tables 
        other than the one named in the DELETE clause.
	• You can use any of the columns returned by a subquery or a join 
        in the WHERE clause of the DELETE statement.
	• You can also use subqueries in the WHERE clause to provide one 
        or more values used in the search condition.

Note 
	• The FROM clause is a SQL Server extension.





