"""UPDATE_statement_syntax"""

UPDATE InvoiceCopy
SET TermsID = 2
WHERE VendorID = 95;



Description 
	• You use the UPDATE statement to modify one or more rows in the 
        table named in the UPDATE clause.
	• You name the columns to be modified and the value to be assigned 
        to each column in the SET clause. You can specify the value for 
        a column as a literal or an expression.
	• You can provide additional criteria for the update operation in the 
        FROM clause, which is a SQL Server extension. See figures 7-6 and 
        7-7 for more information.
	• You can specify the conditions that must be met for a row to be 
        updated in the WHERE clause.
	• You can use the DEFAULT keyword to assign the default value to a 
        column that has one, and you can use the NULL keyword to assign 
        a null value to a column that allows nulls.
	• You can’t update an identity column.

Warning 
	• If you omit the WHERE clause, all the rows in the table will be updated
