The Numeric Functions  


ROUND(number,length [,function])            Returns the number rounded to the precision specified by length. 
                                                If length is positive, the digits to the right of the decimal 
                                                point are rounded. If it’s negative, the digits to the left of 3
                                                the decimal point are rounded. To truncate the number rather 
                                                than round it, code a non-zero value for function.
ISNUMERIC(expression) ABS(number)           Returns a value of 1 (true) if the expression is a numeric value; 
                                                returns a value of 0 (false) otherwise.
CEILING(number)                             Returns the smallest integer that is greater than or equal to the number. 
FLOOR(number)                               Returns the largest integer that is less than or equal to the number. 
SQUARE(float_number)                        Returns the square of a floating-point number. 
SQRT(float_number)                          Returns the square root of a floating-point number.
RAND([integer])                             Returns a random floating-point number between 0 and 1. 
                                                If integer is coded, it provides a starting value for the function. 
                                                Otherwise, the function will return the same number each time it’s 
                                                invoked within the same query


Note 
    • To calculate the square or square root of a number with a data type other 
        than float or real, you must cast it to a floating-point number