"""INSERT_INTO - statements from the ColorSample Table"""

INSERT INTO ColorSample (ColorNumber)
VALUES (606);

INSERT INTO ColorSample (ColorNumber)
VALUES ('Yellow');

INSERT INTO ColorSample (ColorNumber)
VALUES (DEFAULT, 'Orange');

INSERT INTO ColorSample (ColorNumber)
VALUES (808, NULL);

INSERT INTO ColorSample (ColorNumber)
VALUES (DEFAULT, NULL);

INSERT INTO ColorSample (ColorNumber)
DEFAULT VALUES;

Description 
	• If a column is defined so it allows null values, you can use 
        the NULL keyword in the list of values to insert a null value 
        into that column.
	• If a column is defined with a default value, you can use the 
        DEFAULT keyword in the list of values to insert the default 
        value for that column.
	• If all of the columns in a table are defined as either identity 
        columns, columns with default values, or columns that allow 
        null values, you can code the DEFAULT keyword at the beginning 
        of the VALUES clause and then omit the list of values.
	• If you include a column list, you can omit columns with default 
        values and null values. Then, the default value or null value 
        is assigned automatically.
