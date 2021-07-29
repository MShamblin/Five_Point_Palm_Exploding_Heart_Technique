-- The explicit syntax for an outer join 

	SELECT select_list 
	FROM table_1 
		{LEFT|RIGHT|FULL} [OUTER] JOIN table_2 
			ON join_condition_1 
		[{LEFT|RIGHT|FULL} [OUTER] JOIN table_3 
            ON join_condition_2]...




What outer joins do: 
Joins of this type 	        Keep unmatched rows from 
Left outer join 	        The first (left) table 
Right outer join 	        The second (right) table
Full outer join  	        Both tables
