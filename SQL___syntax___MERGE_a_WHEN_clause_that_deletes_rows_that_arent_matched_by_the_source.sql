"""Merge_a_WHEN_clause_that_deletes_rows_that_arent_matched_by_the_source"""

WHEN NOT MATCHED BY SOURCE THEN DELETE






Description 
	• The MERGE statement merges multiple rows from one table into 
        another table. Since this often involves updating existing 
        rows and inserting new rows, the MERGE statement is 
        sometimes referred to as the upsert statement.
	• When coding search conditions, you can use the AND keyword to 
        create compound search conditions.
	• You can code one or more WHEN clauses that control when and 
        how a row is inserted, updated, or deleted.
	• Within a WHEN clause, you can code a simplified INSERT, 
        UPDATE, or DELETE statement that doesn’t include a table 
        name or a WHERE clause.
	• To signal the end of a MERGE statement, you must code a 
        semicolon (;). 
