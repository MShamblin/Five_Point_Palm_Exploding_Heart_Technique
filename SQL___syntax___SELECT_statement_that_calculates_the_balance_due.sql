--  A SELECT statement that calculates the balance due --
SELECT InvoiceTotal, PaymentTotal, CreditTotal, 
    InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue 
FROM Invoices;