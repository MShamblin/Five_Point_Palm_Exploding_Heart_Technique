-- The syntax of the aggregate functions 

Function syntax 	                    Result
AVG([ALL|DISTINCT] expression)  	    The average of the non‐null values in the expression.
SUM([ALL|DISTINCT] expression) 	    The total of the non‐null values in the expression.
MIN([ALL|DISTINCT] expression)  	The lowest non‐null value in the expression.
MAX([ALL|DISTINCT] expression)  	The highest non‐null value in the expression.
COUNT([ALL|DISTINCT] expression) 	The number of non‐null values in the expression. 
COUNT(*)  	                        The number of rows selected by the query.
