"""DELETE - statement_that_removes_all_paid_invoices"""

DELETE InvoiceCopy
WHERE InvoiceTotal - PaymentTotal - CreditTotal = 0;






Description 
	• You can use the DELETE statement to delete one or more rows from the 
        table you name in the DELETE clause.
	• You specify the conditions that must be met for a row to be deleted 
        in the WHERE clause.
	• You can specify additional criteria for the delete operation in the 
        FROM clause. See figure 7-9 for more information.

Warning 
	• If you omit the WHERE clause from a DELETE statement, all the rows in 
        the table will be deleted.
