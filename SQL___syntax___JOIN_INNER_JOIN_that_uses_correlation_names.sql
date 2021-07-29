"""The syntax for an inner join that uses correlation names"""
	SELECT select_list 
	FROM table_1 [AS] n1 
		[INNER] JOIN table_2 [AS] n2 
			ON n1.column_name operator n2.column_name 
		[[INNER] JOIN table_3 [AS] n3 
			ON n2.column_name operator n3.column_name]... 
