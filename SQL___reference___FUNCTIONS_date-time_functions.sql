Date/Time Functions 

GETDATE()                                   Returns a datetime value for the current local date and time based on the system’s clock.
GETUTCDATE()                                Returns a datetime value for the current UTC date and time based on the system’s clock and 
                                                time zone setting.
SYSDATETIME()                               Returns a datetime2(7) value for the current local date and time based on the system’s clock.
SYSUTCDATETIME()                            Returns a datetime2(7) value for the current UTC date and time based on the system’s clock 
                                                and time zone setting.
SYSDATETIMEOFFSET()                         Returns a datetimeoffset(7) value for the current UTC date and time based on the system’s 
                                                clock and time zone setting with a time zone offset that is not adjusted for daylight savings time.
DAY(date)                                   Returns the day of the month as an integer.  
MONTH(date)                                 Returns the month as an integer.                          
YEAR(date)                                  Returns the 4-digit year as an integer.
DATENAME(datepart,date)                     Returns the part of the date specified by datepart as a character string.
DATEPART(datepart,date)                     Returns the part of the date specified by datepart as an integer.                
DATEADD(datepart,number,date)               Returns the date that results from adding the specified number of datepart units to the date.             
DATEDIFF(datepart,startdate,enddate)        Returns the number of datepart units between the specified start and end dates.
TODATETIMEOFFSET(datetime2,tzoffset)        Returns a datetimeoffset value that results from adding the specified time zone offset to 
                                                the specified datetime2 value.
SWITCHOFFSET(datetimeoffset,tzoffset)       Returns a datetimeoffset value that results from switching the time zone offset for the 
                                                specified datetimeoffset value to the specified offset.
EOMONTH(startdate[,months])                 Returns a date value for the last day of the month specified by the start date. If months 
                                                is specified, the number of months is added to the start date before the end-of-month date 
                                                is calculated.
DATEFROMPARTS(year,month,day)               Returns a date value for the specified year, month, and day.
ISDATE(expression)                          Returns a value of 1 (true) if the expression is a valid date/time value; returns a value 
                                                of 0 (false) otherwise.
