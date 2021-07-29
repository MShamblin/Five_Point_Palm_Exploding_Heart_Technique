-- A query that returns invoices smaller than the largest invoice for vendor 115 

	SELECT VendorName, InvoiceNumber, InvoiceTotal 
	FROM Vendors JOIN Invoices ON Vendors.VendorID = Invoices.VendorID 
	WHERE InvoiceTotal < ANY 
		(SELECT InvoiceTotal 
		FROM Invoices 
		WHERE VendorID = 115);
