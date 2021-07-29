'Reading Text from a File

'You open a file for input in a similar manner to opening a file for output. 
'The only thing that changes is the mode string, which, in the case of opening 
'a file for input, is 'r' . However, if a file with that name is not accessible, 
'Python raises an error. Here is the code for opening myfile.txt for input:

f = open("myfile.txt", 'r")

'There are several ways to read data from an input file. 
'The simplest way is to use the file method read to input the 
'entire contents of the file as a single string. If the file contains 
'multiple lines of text, the newline characters will be embedded in this 
'string. The next session shows how to use the method read :'

text = f.read()


'After input is finished, another call to read would return an empty string, 
'to indicate that the end of the file has been reached. To repeat an input, 
'the file must be reopened, in order to “rewind” it for another input process. 
'It is not necessary to close the file. Alternatively, an application might read 
'and process the text one line at a time. A for loop accomplishes this nicely. The 
'for loop views a file object as a sequence of lines of text. On each pass through 
'the loop, the loop variable is bound to the next line of text in the sequence. Here 
'is a session that reopens our example file and visits the lines of text in it:'

f = open("myfile.txt", 'r')
for line in f:
        print(line)

'Note that print appears to output an extra newline. This is because each line of 
'text input from the file retains its newline character.

'In cases where you might want to read a specified number of lines from a 
'file (say, the first line only), you can use the file method readline . 
'The readline method consumes a line of input and returns this string, including 
'the newline. If readline encounters the end of the file, it returns the empty s
'tring. The next code segment uses our old friend, the while True loop, to 
'input all of the lines of text with readline :'

f = open("myfile.txt", 'r')
while True:
    line = f.readline()
    if line == "":
        break
    print(line)

