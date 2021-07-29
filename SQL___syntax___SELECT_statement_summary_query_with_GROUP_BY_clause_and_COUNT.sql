-- A summary query that counts the number of invoices by vendor 
	SELECT VendorID, COUNT(*) AS InvoiceQty 
	FROM Invoices 
    GROUP BY VendorID;