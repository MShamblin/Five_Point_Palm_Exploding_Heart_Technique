-- A summary query that includes a summary row for each set of groups (SQL Server 2008 or later)

	SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors 
	FROM Vendors
	WHERE VendorState IN ('IA', 'NJ') 
	GROUP BY CUBE (VendorState, VendorCity) 
    ORDER BY VendorState DESC, VendorCity DESC;