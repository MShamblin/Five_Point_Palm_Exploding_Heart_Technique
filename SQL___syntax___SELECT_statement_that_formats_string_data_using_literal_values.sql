-- How to format string data using literal values 

SELECT VendorName, 
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode AS Address 
FROM Vendors;