-- A query that uses an inner join 

	SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
	FROM Invoices JOIN Vendors 
		ON Invoices.VendorID = Vendors.VendorID 
	WHERE VendorState = 'CA' 
	ORDER BY InvoiceDate;
	
-- The same query restated with a subquery 

	SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
	FROM Invoices 
	WHERE VendorID IN 
		(SELECT VendorID 
		FROM Vendors 
		WHERE VendorState = 'CA')
    ORDER BY InvoiceDate;