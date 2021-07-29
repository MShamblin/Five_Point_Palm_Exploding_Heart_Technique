--A SELECT statement that retrieves and sorts selected columns and rows from the Invoices table

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, 
		PaymentTotal, CreditTotal,
		InvoiceTotal – PaymentTotal – CreditTotal AS BalanceDue 
FROM Invoices
WHERE InvoiceTotal – PaymentTotal – CreditTotal > 0 
ORDER BY InvoiceDate;


'Concepts 
	• You use the SELECT statement to retrieve selected columns and rows from a 
		base table. The result of a SELECT statement is a result table, or result 
		set, like the one shown above.
	• A result set can include calculated values that are calculated from columns 
		in the table.
	• The execution of a SELECT statement is commonly referred to as a query. 