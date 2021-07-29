"""
Prints the maximum and minimum of two input numbers.
"""
from _typeshed import FileDescriptor


first  int(input("Enter the first number:  "))
second = int(input("Enter the second number:  "))
if first > second:
    maximum = first
    minimum = second
else:
    maximum = second
    minimum = first
print("Maximum: ", maximum)
print("Mimimum: ", minimum)



"""
Python includes two functions, max and min , that make the if-else statement 
in this example unnecessary. In the following example, the function max 
returns the largest of its arguments, whereas min returns the smallest of 
its arguments:
"""

first = int(input("Enter the first number: "))
second = int(input("Enter the second number: "))
print("Maximum: ", max(first, second))
print("Minimum: ", min(first, second))

