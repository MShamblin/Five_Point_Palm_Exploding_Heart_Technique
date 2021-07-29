"""INSERT_INTO - A statement that inserts paid invoices in the InvoiceCopy 
table into the InvoiceArchive table"""

INSERT INTO InvoiceArchive
    (InvoiceID, VendorID, InvoiceNumber, InvoiceTotal, CreditTotal, PaymentTotal,
    TermsID, InvoiceDate, InvoiceDueDate)
SELECT 
    InvoiceID, VendorID, InvoiceNumber, InvoiceTotal, CreditTotal, PaymentTotal,
    TermsID, InvoiceDate, InvoiceDueDate
FROM InvoiceCopy
WHERE InvoiceTotal - PaymentTotal - CreditTotal = 0;


Description 
	• To insert rows selected from one or more tables into another 
        table, you can code a subquery in place of the VALUES clause. 
        Then, the rows in the derived table that result from the 
        subquery are inserted into the table.
	• If you don’t code a column list in the INSERT clause, the 
        subquery must return values for all the columns in the 
        table where the rows will be inserted, and the columns 
        must be returned in the same order as they appear in that 
        table. The exception is an identity column, which must be 
        omitted.
	• If you include a column list in the INSERT clause, the 
        subquery must return values for those columns in the 
        same order as they appear in the column list. You can 
        omit columns with default values and columns that accept 
        null values, and you must omit identity columns.