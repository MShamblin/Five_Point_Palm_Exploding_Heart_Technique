How to search for approximate real values 
A SELECT statement that searches for a range of values 

SELECT * FROM RealSample 
WHERE R BETWEEN 0.99 AND 1.01;

Description 
• Because real values are approximate, you’ll want to search for approximate values 
    when retrieving real data. To do that, you can specify a range of values, or 
    you can use the ROUND function to search for rounded values.
• When you display real or decimal values, you may want to format them so they’re 
    aligned on the right.