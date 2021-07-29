'Replacing An Element in a List

'The subscript operator is used to replace an element at a given position:

>>>example - [1, 2, 3, 4]
>>>example
[1, 2, 3, 4]
>>>example[3] = 0
>>>example
[1, 2, 3, 0]

'Note that the subscript operation refers to the target of the assignment statement, 
'which is not the list but an element’s position within it. Much of list processing 
'involves replacing each element with the result of applying some operation to that 
'element. We now present two examples of how this is done.

'The first session shows how to replace each number in a list with its square:

>>>numbers = [2, 3, 4, 5]
>>>numbers
[2, 3, 4, 5] 
>>>for index in range(len(numbers));
        numbers[index] = numbers[index] ** 2
>>>numbers
[4, 9, 15, 25]

'Note that the code uses a for loop over an index rather than a for loop over the list 
'elements, because the index is needed to access the positions for the replacements. 
'The next session uses the string method split to extract a list of the words in a 
'sentence. These words are then converted to uppercase letters within the list:'

>>>sentence = "This example has five words."
>>>words = sentence.split()
>>>words
['This', 'example', 'has', 'five', 'words']
>>>for index in range(led(words)):
        words[index] = words[index].upper()
>>>words
['This', 'Example', "Has", 'Five', 'Words.']

