"""The syntax of the ORDER BY clause for retrieving a range of rows"""
	ORDER BY order_by_list 
		OFFSET offset_row_count {ROW|ROWS} 
		[FETCH {FIRST|NEXT} fetch_row_count {ROW|ROWS} ONLY] 
