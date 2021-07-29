--A statement that deletes the new column--

ALTER TABLE Invoices
DROP COLUMN BalanceDue;

'
Description 
	• The REFERENCES clause for a column indicates that the column contains a foreign key, 
		and it names the table and column that contains the primary key. Because the 
		Invoices table includes foreign keys to the Vendors and Terms tables, these tables 
		must be created before the Invoices table.
	• Because default values are specified for the PaymentTotal and CreditTotal columns, 
		these values don’t need to be specified when a row is added to the table.
	• Because the PaymentDate column accepts nulls, a null value is assumed if a value 
		isn’t specified for this column when a row is added to the table.'