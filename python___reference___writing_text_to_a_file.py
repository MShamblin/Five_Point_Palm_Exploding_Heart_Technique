'Writing Text To a File
F = open("myfile.txt:, "w')

'Data can be output to a text file using a file object. 
'Python’s open function, which expects a file name and a 
'mode string as arguments, opens a connection to the file on 
'disk and returns a file object.

'The mode string is 'r' for input files and 'w' for output files. 
'Thus, the following code opens a file object on a file named 
'myfile.txt for output:

'If the file does not exist, it is created with the given filename. 
'If the file already exists, Python opens it. When an existing file 
'is opened for output, any data already in it are erased.

'String data are written (or output) to a file using the method write 
'with the file object. The write method expects a single string argument. 
'If you want the output text to end with a newline, you must include 
'the escape character '\n' in the string. The next statement writes two 
'lines of text to the file:'

f.write("First Line.\nSecond Line.\n")

'When all of the outputs are finished, the file should be 
'closed using the method close , as follows:

f.close()

