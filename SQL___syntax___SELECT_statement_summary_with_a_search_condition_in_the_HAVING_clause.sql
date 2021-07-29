-- A summary query with a search condition in the HAVING clause 

	SELECT VendorName, COUNT(*) AS InvoiceQty, 
		AVG(InvoiceTotal) AS InvoiceAvg 
	FROM Vendors JOIN Invoices
		ON Vendors.VendorID = Invoices.VendorID 
	GROUP BY VendorName
	HAVING AVG(InvoiceTotal) > 500 
    ORDER BY InvoiceQty DESC;