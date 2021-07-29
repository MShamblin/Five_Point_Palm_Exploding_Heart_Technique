"""The explicit syntax for an inner join"""
	SELECT select_list 
	FROM table_1 
		[INNER] JOIN table_2 
			ON join_condition_1 
		[[INNER] JOIN table_3 
            ON join_condition_2]... 