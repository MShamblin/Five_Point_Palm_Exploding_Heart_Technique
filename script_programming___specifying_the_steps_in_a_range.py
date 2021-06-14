"""
The count-controlled loops we have seen thus far count through consecutive numbers in a series. 
However, in some programs we might want a loop to skip some numbers, perhaps visiting every other 
one or every third one. A variant of Python’s range function expects a third argument that allows 
you to nicely skip some numbers. The third argument specifies a step value, or the interval 
between the numbers used in the range, as shown in the examples that follow:
"""

list(range(1, 6, 1))  # Same as using two arguments
[1, 2, 3, 4, 5]

list(range(1, 6, 2))  # Use every other number
[1, 3, 5]

list(range(1, 6, 3))  # Use every third number
[1 , 4]


"""
Now, suppose you had to compute the sum of the even numbers between 1 and 10. 
Here is the code that solves this problem:
"""

theSum = 0
for count in range(2, 11, 2):
    theSum += count
