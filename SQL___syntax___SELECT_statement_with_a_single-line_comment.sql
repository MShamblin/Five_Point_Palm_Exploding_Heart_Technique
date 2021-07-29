'A SELECT statement with a single-line comment 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, 
    InvoiceTotal – PaymentTotal – CreditTotal AS BalanceDue 
        --The fourth column calculates the balance due for each invoice 
FROM Invoices;

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, 
    InvoiceTotal – PaymentTotal – CreditTotal AS BalanceDue 
FROM Invoices

Coding recommendations 
    • Start each new clause on a new line. 
    • Break long clauses into multiple lines and indent continued lines. 
    • Capitalize the first letter of each keyword and each word in column and table names. 
    • End each statement with a semicolon (;). • Use comments only for portions of code 
        that are difficult to understand.


How to code a comment 
    • To code a block comment, type /* at the start of the block and */ at the end. 
    • To code a single-line comment, type --followed by the comment.

Description 
    • Line breaks, white space, indentation, and capitalization have no effect on the 
        operation of a statement.
    • Comments can be used to document what a statement does or what specific parts 
        of a statement do. They are not executed by the system.

Note 
    • Throughout this book, SQL keywords are capitalized so they’re easier to identify. 
        However, it’s not necessary or customary to capitalize SQL keywords in your 
        own code