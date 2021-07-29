"""A SELECT statement that retrieves rows without null values"""
	SELECT * 
	FROM NullSample 
	WHERE InvoiceTotal IS NOT NULL;
