"""Merge_statement_that_inserts_and_updates_rows"""

MERGE InvoiceArchive AS ia
USING InvoiceCopy AS ic
On ic.InvoiceID = ia.InvoiceID
WHEN MATCHED AND
        ic.PaymentDate IS NOT NULL AND
        ic.PaymentTotal > ia.PaymentTotal
    THEN
    UPDATE SET
        ia.PaymentTotal = ic.PaymentTotal,
        ia.CreditTotal = ic.CreditTotal,
        ia.PaymentDate = ic.PaymentDate
WHEN NOT MATCHED THEN
    INSERT (InvoiceID, VendorID, InvoiceNumber,
            InvoiceTotal, PaymentTotal, CreditTotal,
            TermsID, InvoiceDate, InvoiceDueDate)
    VALUES (ic.InvoiceID, ic.VendorID, ic.InvoiceNumber,
            ic.InvoiceTotal, ic.PaymentTotal, ic.CreditTotal,
            ic.TermsID, ic.InvoiceDate,)



Description 
	• The MERGE statement merges multiple rows from one table into 
        another table. Since this often involves updating existing 
        rows and inserting new rows, the MERGE statement is 
        sometimes referred to as the upsert statement.
	• When coding search conditions, you can use the AND keyword to 
        create compound search conditions.
	• You can code one or more WHEN clauses that control when and 
        how a row is inserted, updated, or deleted.
	• Within a WHEN clause, you can code a simplified INSERT, 
        UPDATE, or DELETE statement that doesn’t include a table 
        name or a WHERE clause.
	• To signal the end of a MERGE statement, you must code a 
        semicolon (;). 
