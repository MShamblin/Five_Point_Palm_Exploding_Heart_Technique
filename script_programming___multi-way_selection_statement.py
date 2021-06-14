"""
The process of testing several conditions and responding accordingly can be 
described in code by a multi-way selection statement. Here is a short Python 
script that uses such a statement to determine and print the letter grade 
corresponding to an input numeric grade:
"""


number = int(input('Enter the numeric grade: '))
if number > 89:
    letter = 'A'
if number > 79:
    letter = 'B'
if number > 69:
    letter = 'C'
else:
    letter = 'F'
print("The letter grade is ", letter)


# Syntax of multi-way if statement
if <condition-1>:
    <sequence of statements-1>
elif <condition-n>:
    <sequence of statements-n>
else:
    <default sequence of statements>

# Once again, indentation helps the human reader and the 
# Python interpreter to see the logical structure of this control statement.