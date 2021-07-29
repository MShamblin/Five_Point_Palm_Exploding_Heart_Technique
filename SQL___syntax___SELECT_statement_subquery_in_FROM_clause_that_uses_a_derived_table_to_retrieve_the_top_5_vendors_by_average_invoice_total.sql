-- A query that uses a derived table to retrieve the top 5 vendors by average invoice total 

	SELECT Invoices.VendorID, MAX(InvoiceDate) AS LatestInv, 
		AVG(InvoiceTotal) AS AvgInvoice 
	FROM Invoices JOIN 
		(SELECT TOP 5 VendorID, AVG(InvoiceTotal) AS AvgInvoice 
		FROM Invoices 
		GROUP BY VendorID 
		ORDER BY AvgInvoice DESC) AS TopVendor 
		ON Invoices.VendorID = TopVendor.VendorID 
	GROUP BY Invoices.VendorID 
    ORDER BY LatestInv DESC;