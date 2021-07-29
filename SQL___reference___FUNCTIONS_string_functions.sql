String Functions    

LEN(string)                                         Returns the number of characters in the string. Leading 
                                                        spaces are included, but trailing spaces are not.
LTRIM(string)                                       Returns the string with any leading spaces removed. 
RTRIM(string)                                       Returns the string with any trailing spaces removed. 
TRIM(string)                                        Returns the string with any leading and trailing spaces 
                                                        removed. 
LEFT(string,length)                                 Returns the specified number of characters from the 
                                                        beginning of the string. 
RIGHT(string,length)                                Returns the specified number of characters from the end 
                                                        of the string. 
SUBSTRING(string,start,length)                      Returns the specified number of characters from the string 
                                                        starting at the specified position. 
REPLACE(search,find,replace)                        Returns the search string with all occurrences of the find 
                                                        string replaced with the replace string. 
TRANSLATE(search,find,replace)                      Returns the search string with characters in the find string 
                                                        replaced with the characters in the replace string. 
REVERSE(string)                                     Returns the string with the characters in reverse order. 
CHARINDEX(find,search[,start])                      Returns an integer that represents the position of the first 
                                                        occurrence of the find string in the search string starting 
                                                        at the specified position. If the starting position isn’t 
                                                        specified, the search starts at the beginning of the string. 
                                                        If the string isn’t found, the function returns zero. 
PATINDEX(find,search)                               Returns an integer that represents the position of the first 
                                                        occurrence of the find pattern in the search string. If 
                                                        the pattern isn’t found, the function returns zero. The 
                                                        find pattern can include wildcard characters. If the pattern 
                                                        begins with a wildcard, the value returned is the position of 
                                                        the first non-wildcard character. 
CONCAT(value1,value2[,value3]...)                   Returns a string that contains a concatenation of the specified 
                                                        values. The values are implicitly converted to strings. A 
                                                        null value is converted to an empty string. 
CONCAT_WS(delimiter,value1, value2[,value3]...)     Same as CONCAT but the values are separated by the specified delimiter. 
LOWER(string)                                       Returns the string converted to lowercase letters. 
UPPER(string)                                       Returns the string converted to uppercase letters. 
SPACE(integer)                                      Returns a string with the specified number of space characters (blanks).



Notes 
    • The start argument must be an integer from 1 to the length of the string.     
    • The TRIM, TRANSLATE, and CONCAT_WS functions were introduced with SQL Server 2017.
