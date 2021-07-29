String Function Examples    



LEN('SQL Server')                                   10
LEN(' SQL Server ')                                 12
LEFT('SQL Server', 3)                               'SQL'
LTRIM(' SQL Server ')                               'SQL Server ' 
RTRIM(' SQL Server ')                               '  SQL Server'                 
TRIM(' SQL Server ')                                'SQL Server'
LOWER('SQL Server')                                 'sql server'
UPPER('ca')                                         CA
PATINDEX('%v_r%', 'SQL Server')                     8
CHARINDEX('SQL', ' SQL Server')                     3
CHARINDEX('-', '(559) 555-1212')                    10
SUBSTRING('(559) 555-1212', 7, 8)                   555-1212
REPLACE(RIGHT('(559) 555-1212', 13), ') ', '-')     559-555-1212 
TRANSLATE('(XDG) 197.TS224', '().', '[]-')          [XDG] 197-TS224
CONCAT('Run time: ',1.52,' seconds')                Run time: 1.52 seconds
CONCAT_WS('.', 559, 555, 1212)                      559.555.1212







A SELECT statement that uses the LEFT, RIGHT, and SUBSTRING functions

    SELECT VendorName, 
        VendorContactLName + ', ' + LEFT(VendorContactFName, 1) + '.' AS ContactName, 
        RIGHT(VendorPhone, 8) AS Phone
    FROM Vendors
    WHERE SUBSTRING(VendorPhone, 2, 3) = 559 
    ORDER BY VendorName;

 