-- A SELECT statement that retrieves two columns and a calculated value for a specific invoice 

SELECT InvoiceID, InvoiceTotal, CreditTotal + PaymentTotal AS TotalCredits 
FROM Invoices 
WHERE InvoiceID = 17;