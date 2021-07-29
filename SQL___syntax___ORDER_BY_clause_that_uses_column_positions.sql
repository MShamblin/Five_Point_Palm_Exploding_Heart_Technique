"""An ORDER BY clause that uses column positions"""
	SELECT VendorName, 
		VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
	FROM Vendors ORDER BY 2, 1;
