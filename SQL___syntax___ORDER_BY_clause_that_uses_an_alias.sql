"""An ORDER BY clause that uses an alias"""
	SELECT VendorName, 
		VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
    ORDER BY Address, VendorName;