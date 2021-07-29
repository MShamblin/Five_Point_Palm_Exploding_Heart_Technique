"""An ORDER BY clause that sorts by one column in descending sequence"""
	SELECT VendorName, 
		VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
	FROM Vendors 
    ORDER BY VendorName DESC;