-- A union that combines information from the Invoices table 
		SELECT 'Active' AS Source, InvoiceNumber, InvoiceDate, InvoiceTotal 
		FROM Invoices 
		WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0 
	UNION 
		SELECT 'Paid' AS Source, InvoiceNumber, InvoiceDate, InvoiceTotal 
		FROM Invoices 
		WHERE InvoiceTotal - PaymentTotal - CreditTotal <= 0 
    ORDER BY InvoiceTotal DESC;