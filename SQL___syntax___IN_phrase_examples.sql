"""Examples of the IN phrase""" 

	"""An IN phrase with a list of numeric literals""" 
		WHERE TermsID IN (1, 3, 4) 
	
	"""An IN phrase preceded by NOT""" 
		WHERE VendorState NOT IN ('CA', 'NV', 'OR') 
	
	"""An IN phrase with a subquery""" 
		WHERE VendorID IN 
			(SELECT VendorID 
			FROM Invoices 
            WHERE InvoiceDate = '2019-12-01')