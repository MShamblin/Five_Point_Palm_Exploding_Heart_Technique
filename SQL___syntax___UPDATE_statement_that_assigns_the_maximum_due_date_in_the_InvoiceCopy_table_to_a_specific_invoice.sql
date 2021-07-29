"""UPDATE_statement_that_assigns_the_maximum_due_date_in_the_InvoiceCopy_table_to_a_specific_invoice"""

UPDATE InvoiceCopy
SET CreditTotal = CreditTotal + 100,
        InvoiceDueDate = (SELECT MAX(InvoiceDueDate) FROM InvoiceCopy)
WHERE InvoiceNumber = '97/522';



Description 
	• You can code a subquery in the SET, FROM, or WHERE clause 
                of an UPDATE statement.
	• You can use a subquery in the SET clause to return the 
                value that’s assigned to a column.
	• You can use a subquery in the FROM clause to identify the 
                rows that are available for update. Then, you can 
                refer to the derived table in the SET and WHERE clauses.
	• You can code a subquery in the WHERE clause to provide one 
                or more values used in the search condition.

