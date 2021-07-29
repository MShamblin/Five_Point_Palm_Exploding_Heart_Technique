-- A query that returns vendors without invoices 
	
	SELECT VendorID, VendorName, VendorState 
	FROM Vendors 
	WHERE VendorID NOT IN 
		(SELECT DISTINCT VendorID 
    FROM Invoices);

-- The query restated without a subquery 

	SELECT Vendors.VendorID, VendorName, VendorState 
	FROM Vendors LEFT JOIN Invoices 
		ON Vendors.VendorID = Invoices.VendorID 
    WHERE Invoices.VendorID IS NULL;