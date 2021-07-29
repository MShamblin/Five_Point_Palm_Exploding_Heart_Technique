"""UPDATE_statement_that_changes_the_terms_of_all_invoices_for_vendors_in_three_states"""

UPDATE InvoiceCopy
SET TermsID = 1
WHERE VendorID IN
    (SELECT VendorID
    FROM VendorCopy
    WHERE VendorState = ('CA', 'AZ', 'NV'));



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