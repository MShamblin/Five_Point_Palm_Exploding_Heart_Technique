-- A query that returns invoices larger than the largest invoice for vendor 34 

	SELECT VendorName, InvoiceNumber, InvoiceTotal 
	FROM Invoices JOIN Vendors ON Invoices.VendorID = Vendors.VendorID 
	WHERE InvoiceTotal > ALL 
		(SELECT InvoiceTotal 
		FROM Invoices 
		WHERE VendorID = 34) 
    ORDER BY VendorName;