-- A SELECT statement that uses a left outer join 
	SELECT VendorName, InvoiceNumber, InvoiceTotal 
	FROM Vendors LEFT JOIN Invoices 
		ON Vendors.VendorID = Invoices.VendorID 
    ORDER BY VendorName;