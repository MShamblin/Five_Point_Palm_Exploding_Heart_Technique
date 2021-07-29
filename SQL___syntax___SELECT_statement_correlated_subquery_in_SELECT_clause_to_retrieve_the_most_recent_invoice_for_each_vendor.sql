-- A query that uses a correlated subquery in its SELECT clause to retrieve the most recent invoice for each vendor 

	SELECT DISTINCT VendorName, 
		(SELECT MAX(InvoiceDate) FROM Invoices 
		WHERE Invoices.VendorID = Vendors.VendorID) AS LatestInv 
	FROM Vendors 
    ORDER BY LatestInv DESC;

-- The same query restated using a join 
	
	SELECT VendorName, MAX(InvoiceDate) AS LatestInv 
	FROM Vendors LEFT JOIN Invoices ON Vendors.VendorID = Invoices.VendorID 
	GROUP BY VendorName 
    ORDER BY LatestInv DESC;