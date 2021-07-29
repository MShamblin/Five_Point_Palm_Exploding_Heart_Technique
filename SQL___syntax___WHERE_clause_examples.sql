-- Examples of WHERE clauses that retrieve... 

	-- Vendors located in Iowa 
		WHERE VendorState = 'IA' 
		
	-- Invoices with a balance due (two variations) 
		WHERE InvoiceTotal – PaymentTotal – CreditTotal > 0 
		WHERE InvoiceTotal > PaymentTotal + CreditTotal 
		
	-- Vendors with names from A to L 
		WHERE VendorName < 'M' 
		
	-- Invoices on or before a specified date 
		WHERE InvoiceDate <= '2020-01-31' 
		
	-- Invoices on or after a specified date 
		WHERE InvoiceDate >= '1/1/20' 
	
	-- Invoices with credits that don’t equal zero 
        HERE CreditTotal <> 0