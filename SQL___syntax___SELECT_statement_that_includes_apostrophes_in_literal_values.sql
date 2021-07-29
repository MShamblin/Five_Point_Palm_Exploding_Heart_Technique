-- How to include apostrophes in literal values
 
SELECT VendorName + '''s Address: ', 
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode 
FROM Vendors;