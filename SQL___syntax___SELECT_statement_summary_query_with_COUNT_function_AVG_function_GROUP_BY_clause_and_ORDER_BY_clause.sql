-- A summary query that calculates the number of invoices and the average invoice amount for the vendors in each state and city 

	SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty, 
		AVG(InvoiceTotal) AS InvoiceAvg 
	FROM Invoices JOIN Vendors
		ON Invoices.VendorID = Vendors.VendorID 
	GROUP BY VendorState, VendorCity 
    ORDER BY VendorState, VendorCity;