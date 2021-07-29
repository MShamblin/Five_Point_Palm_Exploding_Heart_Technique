-- Examples of queries using logical operators 

	-- A search condition that uses the AND operator 
		WHERE VendorState = 'NJ' AND YTDPurchases > 200 
		
	-- A search condition that uses the OR operator 
		WHERE VendorState = 'NJ' OR YTDPurchases > 200 
	
	-- A search condition that uses the NOT operator 
		WHERE NOT (InvoiceTotal >= 5000 OR NOT InvoiceDate <= '2020-02-01') 
	
	-- The same condition rephrased to eliminate the NOT operator 
		WHERE InvoiceTotal < 5000 AND InvoiceDate <= '2020-02-01' 
		
	-- A compound condition without parentheses 
		WHERE InvoiceDate > '01/01/2020' 
			OR InvoiceTotal > 500 
            AND InvoiceTotal - PaymentTotal - CreditTotal > 0
    
    -- The same compound condition with parentheses 
	WHERE (InvoiceDate > '01/01/2020' 
		OR InvoiceTotal > 500) 
        AND InvoiceTotal - PaymentTotal - CreditTotal > 0