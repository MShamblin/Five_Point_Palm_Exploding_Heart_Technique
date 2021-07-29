"""UPDATE_statement_that_changes_the_terms_of_all_the_invoices_for_a_vendor"""

UPDATE InvoiceCopy
SET TermsID = 1
FROM InvoiceCopy JOIN VendorCopy
    ON InvoiceCopy.VendorID = VendorCopy.VendorID
WHERE VendorName = 'Pacific Bell';



Description 
	• If you need to specify column values or search conditions 
        that depend on data in a table other than the one named 
        in the UPDATE clause, you can use a join in the FROM clause.
    • You can use columns from the joined tables in the values you assign 
        to columns in the SET clause or in the search condition of a 
        WHERE clause.


