"""INSERT_INTO - An INSERT statement that adds the new row using a column list"""

INSERT INTO InvoiceCopy
    (VendorID, InvoiceNumber, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDate,
    InvoiceDueDate)
VALUES 
    (95, '111-10098', '2020-03-01', 219.50, 0, 0, 1, '2020-03-31', NULL),
    (102, '109596', '2020-03-01', 22.97, 0, 0, 1, '2020-03-31', NULL)
    (72, '40319', '2020-03-01', 173.38, 0, 0, 1, '2020-03-31', NULL)


Description 
	• You specify the values to be inserted in the VALUES clause. The 
        values you specify depend on whether you include a column list.
	• If you don’t include a column list, you must specify the column 
        values in the same order as they appear in the table, and you 
        must code a value for each column in the table. The exception 
        is an identity column, which must be omitted.
    • If you include a column list, you must specify the column values 
        in the same order as they appear in the column list. You can omit 
        columns with default values and columns that accept null values, 
        and you must omit identity columns.