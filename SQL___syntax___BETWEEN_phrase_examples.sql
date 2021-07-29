"""Examples of the BETWEEN phrase""" 

	"""A BETWEEN phrase with literal values""" 
		WHERE InvoiceDate BETWEEN '2020-01-01' AND '2020-01-31' 
		
	"""A BETWEEN phrase preceded by NOT""" 
		WHERE VendorZipCode NOT BETWEEN 93600 AND 93799 
		
	"""A BETWEEN phrase with a test expression coded as a calculated value""" 
		WHERE InvoiceTotal – PaymentTotal – CreditTotal BETWEEN 200 AND 500 
		
	"""A BETWEEN phrase with the upper and lower limits coded as calculated values""" 
        WHERE InvoiceDueDate BETWEEN GetDate() AND GetDate() + 30