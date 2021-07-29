Reading Numbers from a File

'All of the file input operations return data to the program as strings. 
'If these strings represent other types of data, such as integers or 
'floating-point numbers, the programmer must convert them to the appropriate 
'types before manipulating them further. In Python, the string representations 
'of integers and floating-point numbers can be converted to the numbers themselves 
'by using the functions int and float , respectively.

'When reading data from a file, another important consideration is the format 
'of the data items in the file. Earlier, we showed an example code segment 
'that output integers separated by newlines to a text file. During input, 
'these data can be read with a simple for loop. This loop accesses a line 
'of text on each pass. To convert this line to the integer contained in it, 
'the programmer runs the string method strip to remove the newline and then 
'uns the int function to obtain the integer value.

'The next code segment illustrates this technique. It opens the file of random 
'integers written earlier, reads them, and prints their sum.'

f = open("integers.txt", 'r')
theSum = 0
for line in f:
    line = line.strip()
    number = int(line)
    theSum += number
print("The sum is", theSum)


'Obtaining numbers from a text file in which they are separated by spaces is a bit 
'trickier. One method proceeds by reading lines in a for loop, as before. But each 
'line now can contain several integers separated by spaces. You can use the string 
'method split to obtain a list of the strings representing these integers, and 
'then process each string in this list with another for loop.

'The next code segment modifies the previous one to handle integers separated by 
'spaces and/or newlines.

f = open("intgers.txt", 'r')
theSum = 0
for line in f:
    wordlist = line.split()
    for word in wordlist:
        number = int(word)
        theSum += number
print("The sum is", theSum)


