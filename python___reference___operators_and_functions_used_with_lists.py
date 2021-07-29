'Some Operators and Functions Used with Lists
Operator or Function	                    What It Does
L[<an integer expression>]	                Subscript used to access an element at the given index position.
L[<start>:<end>]	                        Slices for a sublist. Returns a new list.
L1 + L2	                                    List concatenation. Returns a new list consisting of the elements of the two operands.
print(L)	                                Prints the literal representation of the list.
len(L)	                                    Returns the number of elements in the list.
list(range(<upper>))	                    Returns a list containing the integers in the range 0 through upper - 1 .
==, !=, <, >, <=, >=	                    Compares the elements at the corresponding positions in the operand lists. 
                                            Returns True if all the results are true, or False otherwise.
for <variable> in L: <statement>	        Iterates through the list, binding the variable to each element.
<any value> in L	                        Returns True if the value is in the list or False otherwise.