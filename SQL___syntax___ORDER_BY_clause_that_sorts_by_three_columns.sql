"""An ORDER BY clause that sorts by three columns"""
	SELECT VendorName, 
		VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
    ORDER BY VendorState, VendorCity, VendorName;