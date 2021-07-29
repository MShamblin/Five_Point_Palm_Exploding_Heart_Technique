'A statement that creates a new table


CREATE TABLE Invoices 
(
	invoiceID 			INT				NOT NULL IDENTIFY PRIMARY KEY
	VendorID			INT				NOT NULL REFERENCE Vendors(VendorID)
	InvoiceNumber 		VARCHAR(50)		NOT NULL
	InvoiceDate 		DATE			NOT NULL
	InvoiceTotal		MONEY			NOT NULL
	PaymentTotal 		MONEY			NOT NULL
	CreditTotal			MONEY			NOT NULL DEFAULT 0,
	TermsID				INT				NOT NULL DEFAULT 0,
	InvoiceDueDate 		DATE			NOT NULL
	PaymentDate			DATE			NULL



Description 
	• The REFERENCES clause for a column indicates that the column contains a foreign key, 
		and it names the table and column that contains the primary key. Because the 
		Invoices table includes foreign keys to the Vendors and Terms tables, these tables 
		must be created before the Invoices table.
	• Because default values are specified for the PaymentTotal and CreditTotal columns, 
		these values don’t need to be specified when a row is added to the table.
	• Because the PaymentDate column accepts nulls, a null value is assumed if a value 
		isn’t specified for this column when a row is added to the table.'
