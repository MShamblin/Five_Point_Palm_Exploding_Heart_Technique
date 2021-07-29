-- A SELECT statement that uses the LEFT function 

SELECT VendorContactFName, VendorContactLName, 
	LEFT(VendorContactFName, 1) + 
	LEFT(VendorContactLName, 1) AS Initials 
FROM Vendors;