-- A query that uses a correlated subquery to return each invoice that’s higher than the vendor’s average invoice 

	SELECT VendorID, InvoiceNumber, InvoiceTotal 
	FROM Invoices AS Inv_Main 
	WHERE InvoiceTotal > 
		(SELECT AVG(InvoiceTotal) 
		FROM Invoices AS Inv_Sub 
		WHERE Inv_Sub.VendorID = Inv_Main.VendorID) 
    ORDER BY VendorID, InvoiceTotal;