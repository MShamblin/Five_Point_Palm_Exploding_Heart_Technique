-- A summary query that includes a summary row for each grouping level (SQL Server 2008 or later)

	SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors 
	FROM Vendors
	WHERE VendorState IN ('IA', 'NJ') 
	GROUP BY ROLLUP(VendorState, VendorCity) 
    ORDER BY VendorState DESC, VendorCity DESC;