How to Use The CAST Function To Sort The ID Column Cast To INTEGER  

SELECT * FROM StringSample 
ORDER BY CAST(ID AS int)

Description 
    • If you sort by a string column that contains numbers, you may receive unexpected results. 
        To avoid that, you can convert the string column to a numeric value in the ORDER BY clause.
    • If a string consists of two or more components, you can parse it into its individual components. 
        To do that, you can use the CHARINDEX function to locate the characters that separate the components. 
        Then, you can use the LEFT, RIGHT, SUBSTRING, and LEN functions to extract the individual components