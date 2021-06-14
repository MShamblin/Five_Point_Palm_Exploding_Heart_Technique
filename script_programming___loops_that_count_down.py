"""
All of our loops until now have counted up from a lower bound to an upper bound. 
Once in a while, a problem calls for counting in the opposite direction, 
from the upper bound down to the lower bound. For example, when the top-10 
singles tunes are released, they might be presented in order from lowest 
(10th) to highest (1st) rank. In the next session, a loop displays the count 
from 10 down to 1 to show how this would be done:
"""

for count in range(10, 1, -1):
    print(count, end = " ")
10 9 8 7 6 5 4 3 2 1 

list(range(10, 0, -1))
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

"""
When the step argument is a negative number, the range function generates a 
sequence of numbers from the first argument down to the second argument plus 1. 
Thus, in this case, the first argument should express the upper bound, 
and the second argument should express the lower bound minus 1.
"""