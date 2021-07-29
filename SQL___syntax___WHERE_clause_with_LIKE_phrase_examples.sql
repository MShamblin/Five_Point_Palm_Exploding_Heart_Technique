--WHERE clauses that use the LIKE operator --

Example 	                                    Results that match the mask 
WHERE VendorCity LIKE 'SAN%' 	                “San Diego” and “Santa Ana” 
WHERE VendorName LIKE 'COMPU_ER%' 	            “Compuserve” and “Computerworld” 
WHERE VendorContactLName LIKE 'DAMI[EO]N' 	    “Damien” and “Damion” 
WHERE VendorState LIKE 'N[A-J]' 	            “NC” and “NJ” but not “NV” or “NY” 
WHERE VendorState LIKE 'N[^K-Y]' 	            “NC” and “NJ” but not “NV” or “NY” 
WHERE VendorZipCode NOT LIKE '[1-9]%' 	        “02107” and “08816”
