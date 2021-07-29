"""DELETE - statement_using_NOT_IN_that_deletes_vendors_that_dont_have_invoices"""

DELETE VendorCopy 
WHERE VendorID NOT IN
    (SELECT DISTINCT VendorID FROM InvoiceCopy); 



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





