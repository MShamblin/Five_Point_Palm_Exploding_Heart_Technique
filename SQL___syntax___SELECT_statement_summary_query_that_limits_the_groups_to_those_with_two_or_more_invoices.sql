-- A summary query that limits the groups to those with two or more invoices
	SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty, 
		AVG(InvoiceTotal) AS InvoiceAvg 
	FROM Invoices JOIN Vendors
		ON Invoices.VendorID = Vendors.VendorID 
	GROUP BY VendorState, VendorCity 
	HAVING COUNT(*) >= 2
    ORDER BY VendorState, VendorCity; 