'Searching a List

'After elements have been added to a list, a program can search for a 
'given element. The in operator determines an element’s presence or 
'absence, but programmers often are more interested in the position 
'of an element if it is found (for replacement, removal, or other use). 
'Unfortunately, the list type does not include the convenient find 
'method that is used with strings. Recall that find returns either 
'the index of the given substring in a string or –1 if the substring 
'is not found. Instead of find , you must use the method index to 
'locate an element’s position in a list. It is unfortunate that index 
'raises an exception when the target element is not found. To guard 
'against this unpleasant consequence, you must first use the in 
'operator to test for presence and then the index method if this 
'test returns True . The next code segment shows how this is done 
'for an example list and target element:'

aList = [34, 45, 67]
target = 45
if target in aList:
    print(aList.index(target))
else:
    print(-1)