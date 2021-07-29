"""A SELECT statement that joins the Vendors and Invoices tables"""
	SELECT InvoiceNumber, VendorName 
	FROM Vendors JOIN Invoices 
		ON Vendors.VendorID = Invoices.VendorID;
