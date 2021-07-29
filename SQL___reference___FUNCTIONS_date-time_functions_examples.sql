Date/Time Function Examples 


GETDATE()                           2020-04-30 14:10:13.813 
GETUTCDATE()                        2020-04-30 21:10:13.813

SYSDATETIME()                       2020-04-30 14:10:13.8160822
SYSUTCDATETIME()                    2020-04-30 21:10:13.8160822
SYSDATETIMEOFFSET()                 2020-04-30 14:10:13.8160822 -07.00

MONTH('2020-04-30')                 4
DATEPART(month,'2020-04-30')        4 
DATENAME(month,'2020-04-30')        April 
DATENAME(m,'2020-04-30')            April

EOMONTH('2020-02-01')               2020-02-29
EOMONTH('2020-02-01',2)             2020-04-30
DATEFROMPARTS(2020,4,3)             2020-04-03

ISDATE('2020-04-30')                1
ISDATE('2020-04-31')                0
ISDATE('23:59:59')                  1
ISDATE('23:99:99')                  0
