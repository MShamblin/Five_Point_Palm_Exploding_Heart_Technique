-- A query that returns vendors without invoices 
	
	SELECT VendorID, VendorName, VendorState 
	FROM Vendors 
	WHERE VendorID NOT IN 
		(SELECT DISTINCT VendorID 
    FROM Invoices);