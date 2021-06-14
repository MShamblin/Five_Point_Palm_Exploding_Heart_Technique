-- A CREATE PROCEDURE statement for a procedure named spVendorsByState 

CREATE PROCEDURE spVendorsByState @StateVar char(2) AS 
    SELECT VendorName, VendorState, VendorPhone 
    FROM Vendors
    WHERE VendorState = @StateVar 
ORDER BY VendorName;

