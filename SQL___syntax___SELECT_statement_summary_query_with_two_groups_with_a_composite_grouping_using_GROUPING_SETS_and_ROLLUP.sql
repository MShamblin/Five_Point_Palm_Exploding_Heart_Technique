-- A summary query with a composite grouping using GROUPING SETS

	SELECT VendorState, VendorCity, VendorZipCode, 
		COUNT(*) AS QtyVendors
	FROM Vendors 
	WHERE VendorState IN ('IA', 'NJ')
	GROUP BY GROUPING SETS(ROLLUP(VendorState, VendorCity), VendorZipCode) 
    ORDER BY VendorState DESC, VendorCity DESC;