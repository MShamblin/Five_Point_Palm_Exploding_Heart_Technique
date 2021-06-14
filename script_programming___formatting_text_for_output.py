"""
Before turning to our next case study, we need to examine more closely the format of text for output. 
Many data-processing applications require output that has a tabular format, like that used in spreadsheets 
or tables of numeric data. In this format, numbers and other information are aligned in 
columns that can be either left-justified or right-justified. A column of data is left-justified
if its values are vertically aligned beginning with their leftmost characters. A column of data is 
right-justified if its values are vertically aligned beginning with their rightmost characters. 
To maintain the margins between columns of data, left-justification requires the addition of spaces 
to the right of the datum, whereas right-justification requires adding spaces to the left of the datum. 
A column of data is centered if there are an equal number of spaces on either side of the data within 
that column.

The total number of data characters and additional spaces for a given datum in a formatted 
string is called its field width

The print function automatically begins printing an output datum in the first available column. 
The next example, which displays the exponents 7 through 10 and the values of 107 through 1010, 
shows the format of two columns produced by the print function:
"""


for exponent in range(7, 11):
    print(exponent, 10 ** exponent)

[7 1000000]
[8 10000000]
[9 100000000]
[10 1000000000]




"""
Note that when the exponent reaches 10, the output of the second column shifts over by a space 
and looks ragged. The output would look neater if the left column were left-justified and the 
right column were right-justified. When we format floating-point numbers for output, we often 
would like to specify the number of digits of precision to be displayed as well as the field 
width. This is especially important when displaying financial data in which exactly two digits 
of precision are required.

Python includes a general formatting mechanism that allows the programmer to specify field widths
for different types of data. The next session shows how to right-justify and left-justify the 
string "four" within a field width of 6:
"""

"%6s" % "four"          # Right Justify
"%-6s" % "four"         # Left Justify

# Syntax
<format string> % (datum-1, ... <datum-n)


for exponent in range(7, 11):
    print("%-3d%12d" % (exponent, 10 ** exponent))

[7      1000000]
[8     10000000]
[9    100000000]
[10  1000000000]


"""
The format information for a data value of type float has the form
"""
%<field width>.<precision>f


"""
where .<precision> is optional. The next session shows the output of a floating-point 
number without, and then with, a format string:
"""

salary = 100.00
print("Your salary is $" + str(salary))
[Your salary is $100.0]

print("Your salary is $%0.2f" % salary)
[Your salary is $100.00]



"""
Here is another, minimal, example of the use of a format string, which says to use 
a field width of 6 and a precision of 3 to format the float value 3.14:
"""

"6.3f" % 3.14
['  3.0140']

