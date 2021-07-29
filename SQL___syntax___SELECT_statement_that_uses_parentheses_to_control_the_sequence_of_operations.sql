-- A SELECT statement that uses parentheses to control the sequence of operations 
SELECT InvoiceID, 
    InvoiceID + 7 * 3 AS OrderOfPrecedence, 
    (InvoiceID + 7) * 3 AS AddFirst 
    FROM Invoices 
    ORDER BY InvoiceID;