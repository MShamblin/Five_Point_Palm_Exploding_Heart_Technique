"""UPDATE_statement_that_applies_a_100_credit_to_the_10_invoices_with_the_largest_balances"""

UPDATE InvoiceCopy
SET CreditTotal = CreditTotal + 100
WHERE VendorID = 
    (SELECT TOP 10 InvoiceID
    FROM InvoiceCopy
    WHERE InvoiceTotal - PaymentTotal - CreditTotal >= 100
    ORDER BY InvoiceTotal - PaymentTotal - CreditTotal DESC) AS TopInvoices
WHERE InvoiceCopy.InvoiceID = TopInvoices.InvoiceID;


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