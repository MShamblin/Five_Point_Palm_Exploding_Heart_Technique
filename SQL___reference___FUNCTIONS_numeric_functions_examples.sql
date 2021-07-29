Numeric Functions Examples      



ROUND(12.5,0)                   13.0
ROUND(12.4999,0)                12.0000
ROUND(12.4999,1)                12.5000 
ROUND(12.4999,-1)               10.0000
ROUND(12.5,0,1)                 12.0

ISNUMERIC(-1.25)                1
ISNUMERIC('SQL Server')         0 
ISNUMERIC('2020-04-30')         0
ABS(-1.25)                      1.25
CEILING(-1.25)                  -1
FLOOR(-1.25)                    -2
CEILING(1.25)                   2
FLOOR(1.25)                     1


SQUARE(5.2786)                  27.86361796
SQRT(125.43)                    11.199553562531
RAND()                          0.243729

  
Note 
    • To calculate the square or square root of a number with a data type other 
        than float or real, you must cast it to a floating-point number