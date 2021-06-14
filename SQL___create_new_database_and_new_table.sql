-- A statement that creates a new table --

CREATE DATABASE AP;

-- A statement that creates a new table --

CREATE TABLE Invoices
(
	InvoiceID        INT            NOT NULL IDENTITY PRIMARY KEY,
	VendorID         INT            NOT NULL REFERENCES Vendors(VendorID),
	InvoiceNumber    VARCHAR(50)    NOT NULL,
	InvoiceDate      DATE           NOT NULL,
	InvoiceTotal     MONEY          NOT NULL,
	PaymentTotal     MONEY          NOT NULL DEFAULT 0,
	CreditTotal      MONEY          NOT NULL DEFAULT 0,
	TermsID          INT            NOT NULL REFERENCES Terms(TermsID),
	InvoiceDueDate   DATE           NOT NULL,
	PaymentDate      DATE           NULL
);

