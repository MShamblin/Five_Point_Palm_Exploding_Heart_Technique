The same join with the second condition coded in a WHERE clause 
	SELECT InvoiceNumber, InvoiceDate, 
		InvoiceTotal, InvoiceLineItemAmount 
	FROM Invoices JOIN InvoiceLineItems AS LineItems 
		ON Invoices.InvoiceID = LineItems.InvoiceID 
	WHERE Invoices.InvoiceTotal > LineItems.InvoiceLineItemAmount 
    ORDER BY InvoiceNumber;