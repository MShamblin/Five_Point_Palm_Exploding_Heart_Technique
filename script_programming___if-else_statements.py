"""
The if-else statement is the most common type of selection statement. It is also called a two-way 
selection statement, because it directs the computer to make a choice between two alternative courses of action.

The if-else statement is often used to check inputs for errors and to respond with error 
messages if necessary. The alternative is to go ahead and perform the computation if the inputs are valid.

For example, suppose a program inputs the area of a circle and computes and outputs its radius. 
Legitimate inputs for this program would be positive numbers. But, by mistake, the user could 
still enter a zero or a negative number. Because the program has no choice but to use this value 
to compute the radius, it might crash (stop running) or produce a meaningless output. The next 
code segment shows how to use an if-else statement to locate (trap) this error and respond to it:
"""

import math
area = float(input("Enter the area:  "))
if area > 0:
    radius = (area / math.pi)
    print("The radius is ", radius)
else:
    print("Error:  the area must be a positive number")



"""
Here is the Python syntax for the if-else statement:
"""

if <condition>:
    <sequence of statements-1>
else:
    <sequence of statements-1>

"""
The condition in the if-else statement must be a Boolean expression—that is, an expression 
that evaluates to either true or false. The two possible actions each consist of a sequence 
of statements. Note that each sequence must be indented at least one space beyond the symbols 
if and else . Lastly, note the use of the colon (:) following the condition and the word else .
"""
