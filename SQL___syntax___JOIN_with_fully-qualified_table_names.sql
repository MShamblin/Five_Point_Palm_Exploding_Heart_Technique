"""A join with fully-qualified table names"""
	SELECT VendorName, CustLastName, CustFirstName, 
		VendorState AS State, VendorCity AS City 
	FROM DBServer.AP.dbo.Vendors AS Vendors 
		JOIN DBServer.ProductOrders.dbo.Customers AS Customers 
		ON Vendors.VendorZipCode = Customers.CustZip 
    ORDER BY State, City;