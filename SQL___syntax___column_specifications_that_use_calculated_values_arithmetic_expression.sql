-- Column specifications that use calculated values 
	-- An arithmetic expression is used to calculate BalanceDue 
    
SELECT InvoiceNumber, 
    InvoiceTotal - PaymentTotal – CreditTotal AS BalanceDue 