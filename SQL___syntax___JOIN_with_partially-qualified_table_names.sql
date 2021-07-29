"""The same join with partially-qualified table names"""
	SELECT VendorName, CustLastName, CustFirstName, 
		VendorState AS State, VendorCity AS City 
	FROM Vendors 
		JOIN ProductOrders..Customers AS Customers 
		ON Vendors.VendorZipCode = Customers.CustZip 
    ORDER BY State, City;