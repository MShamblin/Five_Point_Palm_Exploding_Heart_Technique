"""INSERT - the syntax of the INSERT statement"""

INSERT [INTO] table_name [(column_list)]
[DEFAULT] VALUES (expression_1, expression_2...)
[, (expression_1 [, expression_2]...)...]



Description 
	• You specify the values to be inserted in the VALUES clause. The 
        values you specify depend on whether you include a column list.
	• If you don’t include a column list, you must specify the column 
        values in the same order as they appear in the table, and you 
        must code a value for each column in the table. The exception 
        is an identity column, which must be omitted.
        • If you include a column list, you must specify the column values 
        in the same order as they appear in the column list. You can omit 
        columns with default values and columns that accept null values, 
        and you must omit identity columns.