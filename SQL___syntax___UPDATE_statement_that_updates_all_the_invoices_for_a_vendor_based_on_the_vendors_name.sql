"""UPDATE_statement_that_updates_all_the_invoices_for_a_vendor_based_on_the_vendors_name"""

UPDATE InvoiceCopy
SET TermsID = 1
WHERE VendorID = 
    (SELECT VendorID
    FROM VendorCopy
    WHERE VendorName = 'Pacific Bell');



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
