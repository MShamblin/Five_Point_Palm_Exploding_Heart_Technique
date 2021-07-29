'Some File System Functions
os Module Function	                What it Does
chdir(path)	                        Changes the current working directory to path .
getcwd()	                        Returns the path of the current working directory.
listdir(path)	                    Returns a list of the names in directory named path .
mkdir(path)	                        Creates a new directory named path and places it in the current working directory.
remove(path)	                    Removes the file named path from the current working directory.
rename(old, new)	                Renames the file or directory named old to new .
rmdir(path)	                        Removes the directory named path from the current working directory.
sep	                                A variable that holds the separator character ( '/' or '\' ) of the current file system.
exists(path)	                    Returns True if path exists and False otherwise.
isdir(path)	                        Returns True if path names a directory and False otherwise.
isfile(path)	                    Returns True if path names a file and False otherwise.
getsize(path)	                    Returns the size of the object names by path in bytes.
normcase(path)	                    Converts path to a pathname appropriate for the current file system; for example, 
                                    converts forward slashes to backslashes and letters to lowercase on a Windows system.


'Note that the operations listed in Tables 4-5 and 4-6 are functions, not methods. Thus, the call'

os.rename("oldname.txt", "newname.txt")

'is a function called on its defining module, not a method called on an object.