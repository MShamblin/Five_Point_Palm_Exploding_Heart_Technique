-- A statement that adds a new column to the table --

ALTER TABLE Invoices
ADD BalanceDue MONEY NOT NULL;




--A statement that deletes the new column--

ALTER TABLE Invoices
DROP COLUMN BalanceDue;



-- A statement that creates an index on the table --

CREATE INDEX IX_Invoices_VendorID 
    ON Invoices (VendorID)