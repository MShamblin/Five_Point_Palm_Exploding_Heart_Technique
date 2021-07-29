-- A SELECT statement that joins the Vendors and Invoices tables 
	
    SELECT InvoiceNumber, VendorName 
	FROM Vendors, Invoices 
    WHERE Vendors.VendorID = Invoices.VendorID;