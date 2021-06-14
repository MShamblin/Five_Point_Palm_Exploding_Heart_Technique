-- Column specifications that use calculated values --
#	An arithmetic expression is used to calculate BalanceDue 
SELECT InvoiceNumber, 
    InvoiceTotal - PaymentTotal – CreditTotal AS BalanceDue 

#	A string expression is used to calculate FullName 
SELECT VendorContactFName + ' ' + VendorContactLName AS FullName 
	
#	A function is used to calculate CurrentDate 
SELECT InvoiceNumber, InvoiceDate, 
    GETDATE() AS CurrentDate