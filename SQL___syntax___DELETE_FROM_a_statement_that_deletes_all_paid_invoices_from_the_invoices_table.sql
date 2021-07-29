'A statement that deletes all paid invoices from the Invoices table 

DELETE FROM Invoices
WHERE InvoiceTotal – PaymentTotal – CreditTotal = 0;'

'Concepts 
    • You use the INSERT statement to add rows to a table. 
    • You use the UPDATE statement to change the values in one or more rows of a table 
        based on the condition you specify.
    • You use the DELETE statement to delete one or more rows from a table based on 
        the condition you specify.
    • The execution of an INSERT, UPDATE, or DELETE statement is often referred to as 
        an action query.

Warning 
    • Until you read chapter 7 and understand the effect that these statements can have 
        on the database, do not execute the statements shown above.'