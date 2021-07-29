"""List Methods for Inserting and Removing Elements

The list type includes several methods for inserting and removing elements. 
These methods are summarized in Table 5-2, where L refers to a list. To 
learn more about each method, enter help(list.<method name>) in a Python shell.

List Methods for Inserting and Removing Elements
List Method	                            What It Does
L.append(element)	                    Adds element to the end of L .
L.extend(aList)	                        Adds the elements of aList to the end of L .
L.insert(index, element)	            Inserts element at index if index is less than the length of L . 
                                        Otherwise, inserts element at the end of L .
L.pop()	                                Removes and returns the element at the end of L .
L.pop(index)	                        Removes and returns the element at index .


The method insert expects an integer index and the new element as arguments. When 
the index is less than the length of the list, this method places the new element 
before the existing element at that index, after shifting elements to the right 
by one position. At the end of the operation, the new element occupies the given 
index position. When the index is greater than or equal to the length of the 
list, the new element is added to the end of the list. The next session shows 
insert in action:'"""

>>>example = [1, 2]
>>>example
[1, 2]
>>>example.insert(1, 10)
>>>example
[1, 10, 2]
>>>example.insert(3, 25)
>>>example
[1, 10, 2, 25]

"""
The method append is a simplified version of insert . The method append expects 
just the new element as an argument and adds the new element to the end of 
the list. The method extend performs a similar operation, but adds the 
elements of its list argument to the end of the list. The next session shows 
the differences between append , extend , and the + operator'
"""


>>>example = [1, 2]
>>>example
[1, 2]
>>>example.append(3)
>>>example
[1, 2, 3]
>>>example.append([11, 12, 13])
>>>example
[1, 2, 3, 11, 12, 13]
>>>example + [14, 15]
[1, 2, 3, 11, 12, 13, 14, 15]
>>>example
[1, 2, 3, 11, 12, 13]

"""
Note that the + operator builds and returns a brand new list containing 
the elements of the two operands, whereas append and extend modify the 
list object on which the methods are called.

The method pop is used to remove an element at a given position. If the 
position is not specified, pop removes and returns the last element. If 
the position is specified, pop removes the element at that position and 
returns it. In that case, the elements that followed the removed element 
are shifted one position to the left. The next session removes the last 
and first elements from the example list:'
"""


>>>example
[1, 2, 10, 11, 12, 13]
>>>example.pop()            'Remove the last element'
13
>>>example
[1, 2, 10, 11, 12]
>>>example.pop(0)           'Remove the first element'
1
>>>example
[2, 10, 11, 12]

"""
Note that the method pop and the subscript operator expect the index 
argument to be within the range of positions currently in the list. 
If that is not the case, Python raises an exception.'
"""