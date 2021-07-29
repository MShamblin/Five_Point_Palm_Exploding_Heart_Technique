-- Column specifications that use calculated values
-- A function is used to calculate CurrentDate 

SELECT InvoiceNumber, InvoiceDate, 
    GETDATE() AS CurrentDate