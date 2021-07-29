"""SELECT_INTO - A statement that creates a partial copy of the Invoices Table"""


SELECT *
INTO OldInvoices
FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal = 0;


Description 
	• The INTO clause is a SQL Server extension that lets you create 
        a new table based on the result set defined by the SELECT 
        statement. Since the definitions of the columns in the new 
        table are based on the columns in the result set, the column 
        names assigned in the SELECT clause must be unique.
	• You can code the other clauses of the SELECT INTO statement just 
        as you would for any other SELECT statement.
	• If you use calculated values in the select list, you must name 
        the column since that name is used in the definition of the new table.
	• The table you name in the INTO clause must not exist. If it does, 
        you must delete it using the DROP TABLE statement before you 
        execute the SELECT INTO statement.

Warning 
When you use the SELECT INTO statement to create a table, only the column 
    definitions and data are copied. That means that definitions of primary 
    keys, foreign keys, indexes, default values, and so on are not included 
    in the new table