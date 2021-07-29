-- The simplified syntax of the SELECT statement --

SELECT select_list 
[FROM table_source] 
[WHERE search_condition] 
[ORDER BY order_by_list]



-- The expanded syntax of the SELECT clause 

SELECT [ALL|DISTINCT] [TOP n [PERCENT] [WITH TIES]] 
    column_specification [[AS] result_column] 
    [, column_specification [[AS] result_column]] …