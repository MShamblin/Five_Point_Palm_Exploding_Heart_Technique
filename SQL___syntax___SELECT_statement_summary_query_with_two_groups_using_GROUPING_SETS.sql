-- A summary query with two groups using GROUPING SETS

	SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors 
	FROM Vendors
	WHERE VendorState IN ('IA', 'NJ') 
	GROUP BY GROUPING SETS(VendorState, VendorCity) 
    ORDER BY VendorState DESC, VendorCity DESC;