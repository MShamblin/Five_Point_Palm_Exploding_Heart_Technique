-- A summary query that works on non-numeric columns 

	SELECT MIN(VendorName) AS FirstVendor, 
		MAX(VendorName) AS LastVendor, 
		COUNT(VendorName) AS NumberOfVendors
    FROM Vendors;