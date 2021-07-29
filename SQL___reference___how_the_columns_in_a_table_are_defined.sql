'How the columns in a table are define'

'
Common SQL Server data types 
bit                                 A value of 1 or 0 that represents a True or False value. 
int, bigint, smallint, tinyint      Integer values of various si
money, smallmoney                   Monetary values that are accurate to four decimal places.
decimal, numeric                    Decimal values that are accurate to the least significant 
                                        digit. The values can contain an integer portion and 
                                        a decimal portion.
float, real                         Floating-point values that contain an approximation of a 
                                        decimal value                          
date, time, datetime2               Dates and times.
char, varchar                       A string of letters, symbols, and numbers in the Unicode                                
nchar, nvarchar                     A string of letters, symbols, and numbers in the ASCII character set. 
                                    A string of letters, symbols, and numbers in the Unicode character se

Description 
    • The data type that’s assigned to a column determines the type and size of the information 
        that can be stored in the column.
    • Each column definition also indicates whether or not it can contain null values. A null 
        value indicates that the value of the column is unknown.
    • A column can also be defined with a default value. Then, that value is used if another 
        value isn’t provided when a row is added to the table.
    • A column can also be defined as an identity column. An identity column is a numeric column 
        whose value is generated automatically when a row is added to the table.'
'

 