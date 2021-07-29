#Some file Operations
#Method	                    #What it Does
open(filename, mode)	    #Opens a file at the given filename and returns a file object. The mode can be 'r' , 'w' , 'rw' , or 'a' . 
                            #The last two values, 'rw' and 'a' , mean read/write and append, respectively.
f.close()	                #Closes an output file. Not needed for input files.
f.write(aString)	        #Outputs aString to a file.
f.read()	                #Inputs the contents of a file and returns them as a single string. Returns "" if the end of file is reached.
f.readline()	            #Inputs a line of text and returns it as a string, including the newline. Returns "" if the end of file is reached.