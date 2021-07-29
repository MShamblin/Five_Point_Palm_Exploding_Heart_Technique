-- A query that uses three subqueries 
	
	SELECT Summary1.VendorState, Summary1.VendorName, TopInState.SumOfInvoices 
	FROM 
			(SELECT V_Sub.VendorState, V_Sub.VendorName, 
				SUM(I_Sub.InvoiceTotal) AS SumOfInvoices 
			FROM Invoices AS I_Sub JOIN Vendors AS V_Sub 
				ON I_Sub.VendorID = V_Sub.VendorID 
			GROUP BY V_Sub.VendorState, V_Sub.VendorName) AS Summary1 
		JOIN 
			(SELECT Summary2.VendorState, 
				MAX(Summary2.SumOfInvoices) AS SumOfInvoices 
			FROM 
				(SELECT V_Sub.VendorState, V_Sub.VendorName, 
					SUM(I_Sub.InvoiceTotal) AS SumOfInvoices 
				FROM Invoices AS I_Sub JOIN Vendors AS V_Sub 
					ON I_Sub.VendorID = V_Sub.VendorID 
				GROUP BY V_Sub.VendorState, V_Sub.VendorName) AS Summary2 
			GROUP BY Summary2.VendorState) AS TopInState 
		ON Summary1.VendorState = TopInState.VendorState AND 
			Summary1.SumOfInvoices = TopInState.SumOfInvoices 
    ORDER BY Summary1.VendorState;

-- Pseudocode for the query 

	SELECT Summary1.VendorState, Summary1.VendorName, TopInState.SumOfInvoices 
	FROM (Derived table returning VendorState, VendorName, SumOfInvoices) 
			AS Summary1 
		JOIN (Derived table returning VendorState, MAX(SumOfInvoices)) 
			AS TopInState 
		ON Summary1.VendorState = TopInState.VendorState AND 
			Summary1.SumOfInvoices = TopInState.SumOfInvoices 
	ORDER BY Summary1.VendorState; 
	
-- Pseudocode for the TopInState subquery 

	SELECT Summary2.VendorState, MAX(Summary2.SumOfInvoices) 
	FROM (Derived table returning VendorState, VendorName, SumOfInvoices) 
		AS Summary2 
	GROUP BY Summary2.VendorState; 
	
-- The code for the Summary1 and Summary2 subqueries 

	SELECT V_Sub.VendorState, V_Sub.VendorName, 
		SUM(I_Sub.InvoiceTotal) AS SumOfInvoices 
	FROM Invoices AS I_Sub JOIN Vendors AS V_Sub 
		ON I_Sub.VendorID = V_Sub.VendorID 
    GROUP BY V_Sub.VendorState, V_Sub.VendorName;