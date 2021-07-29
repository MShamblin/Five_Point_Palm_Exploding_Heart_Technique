"""An ORDER BY clause that uses an expression"""
	SELECT VendorName, 
		VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
	ORDER BY VendorContactLName + VendorContactFName;
