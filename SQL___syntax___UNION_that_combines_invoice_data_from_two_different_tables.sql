-- A union that combines invoice data from two different tables 
		SELECT 'Active' AS Source, InvoiceNumber, InvoiceDate, InvoiceTotal 
		FROM ActiveInvoices 
		WHERE InvoiceDate >= '01/01/2020' 
	UNION 
		SELECT 'Paid' AS Source, InvoiceNumber, InvoiceDate, InvoiceTotal 
		FROM PaidInvoices 
		WHERE InvoiceDate >= '01/01/2020' 
    ORDER BY InvoiceTotal DESC;