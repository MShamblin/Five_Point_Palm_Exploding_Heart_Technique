"""An ORDER BY clause that retrieves the first five rows"""
	SELECT VendorID, InvoiceTotal 
	FROM Invoices 
	ORDER BY InvoiceTotal DESC 
		OFFSET 0 ROWS 
		FETCH FIRST 5 ROWS ONLY;
