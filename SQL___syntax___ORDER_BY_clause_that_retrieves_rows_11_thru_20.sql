"""An ORDER BY clause that retrieves rows 11 through 20"""
	SELECT VendorName, VendorCity, VendorState, VendorZipCode 
	FROM Vendors 
	WHERE VendorState = 'CA' 
		ORDER BY VendorCity 
		OFFSET 10 ROWS 
        FETCH NEXT 10 ROWS ONLY;