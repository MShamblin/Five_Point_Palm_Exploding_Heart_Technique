-- A summary query that includes a final summary row (SQL Server 2008 or later)

	SELECT VendorID, COUNT(*) AS InvoiceCount, 
		SUM(InvoiceTotal) AS InvoiceTotal
	FROM Invoices 
    GROUP BY CUBE(VendorID); 175 