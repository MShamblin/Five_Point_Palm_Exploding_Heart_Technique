"""
Logical Operators and Compound Boolean Expressions
Often a course of action must be taken if either of two conditions is true. 
For example, valid inputs to a program often lie within a given range of 
values. Any input above this range should be rejected with an error message, 
and any input below this range should be dealt with in a similar fashion. 
The next code segment accepts only valid inputs for our grade conversion 
script and displays an error message otherwise:
"""

number = int(input("Enter the numeric grade: "))
if number > 100:
    print("Error:  grade must be between 100 and 0")
elif number < 0:
    print("Error:  grade must be between 100 and 0")
else:
    # the Code to compute and print the result goes here

"""
Note that the first two conditions are associated with identical actions. 
Put another way, if either the first condition is true or the second 
condition is true, the program outputs the same error message. The two 
conditions can be combined in a Boolean expression that uses the logical 
operator or. The resulting compound Boolean expression simplifies the 
code somewhat, as follows:
"""

number -= int(input("Enter the numeric grade: "))
if number > 100 or number < 0:
    print("Error:  grade must be between 100 and 0")
else:
    # the Code to compute and print the result goes here

"""
Python includes all three Boolean or logical operators, and , or , and not . 
Both the and operator and the or operator expect two operands. The and 
operator returns True if and only if both of its operands are true, and 
returns False otherwise. The or operator returns False if and only if both 
of its operands are false, and returns True otherwise. The not operator 
expects a single operand and returns its logical negation, True , if it’s 
false, and False if it’s true.
"""

