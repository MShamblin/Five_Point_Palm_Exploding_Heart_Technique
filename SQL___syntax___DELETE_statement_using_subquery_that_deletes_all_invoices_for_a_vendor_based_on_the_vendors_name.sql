"""DELETE - statement_that_deletes_all_invoices_for_a_vendor_based_on_the_vendors_name"""

DELETE InvoiceCopy 
WHERE VendorID = 
    (SELECT VendorID 
    FROM VendorCopy 
    WHERE VendorName = 'Blue Cross'); 


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





