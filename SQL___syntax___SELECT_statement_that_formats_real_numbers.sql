A SELECT statement that formats real numbers 


SELECT ID, R, CAST(R AS decimal(9,3)) AS R_decimal, 
    CAST(CAST(R AS decimal(9,3)) AS varchar(9)) AS R_varchar, 
    LEN(CAST(CAST(R AS decimal(9,3)) AS varchar(9))) AS R_LEN, 
    SPACE(9 - LEN(CAST(CAST(R AS decimal(9,3)) AS varchar(9)))) + 
        CAST(CAST(R AS decimal(9,3)) AS varchar(9)) AS R_Formatted
FROM RealSample;


Description 
• Because real values are approximate, you’ll want to search for approximate values 
    when retrieving real data. To do that, you can specify a range of values, or 
    you can use the ROUND function to search for rounded values.
• When you display real or decimal values, you may want to format them so they’re 
    aligned on the right.