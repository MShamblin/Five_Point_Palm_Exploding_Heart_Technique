"""File Dialogs"""

"""
Python’s tkinter.filedialog module includes two functions, askopenfilename and asksaveasfilename , 
to support file access in a GUI-based program. Each function pops up the standard file dialog for 
the user’s particular computer system. If the user selects the dialog’s Cancel button, the function 
returns the empty string. Otherwise, when the user selects the Open or Save button, the function 
returns the full pathname of the file that the user has selected (opening or saving) or entered as 
input (saving only) in the dialog. The program can then use the filename to open the file for 
input or output in the usual manner.

For purposes of this book, we use the following syntax with these two functions:
"""

fList = [("Python Files", ".py"), ("Text Files", "*.txt")]
filename = tkinter.filedialog.askopenfilename(parent = self, filetypes = fList)
filename = tkinter.filedialog.asksaveasfilenamt(parent = self)

"""
Note that you can use the optional filetypes argument to mask the types of files available for 
input. In our example, we want the user to be able to open files with a .py or .txt extension, 
and no others. Table 8-4 lists all of the optional arguments one can supply to the two file 
dialog functions.

The Optional Arguments to the File Dialog Methods
Argument	                        Value
defaultextension                    The extension to add to the filename, if not given by the user (ignored by the open dialog).
filetypes                           A sequence of (label, pattern) tuples. Specifies the file types available for input.
initialdir                          A string representing the directory in which to open the dialog.
initialfile                         A string representing the filename to display in the save dialog name field.
parent                              The dialog’s parent window.
title                               A string to display in the dialog’s title bar.

You can use a file dialog and a text area to create a simple browser that allows the user to view text files.

Here is the code for the window class:
"""


from breezypythongui import EasyFrame
import tkinter.filedialog

class FileDialogDemo (EasyFrame):
    """Demostrates the use of a file dialog"""

    def __init__(self):
        """Sets up the window and widgets"""
        EastFrame.__init__(self, "File Dialog Demo")
        self.outputArea = self.addTextArea("", row = 0, column = 0, width = 80, height = 15)
        self.addButton(text = "Open", row = 1, column = 0, command = self.openFile)

       # Event handling method
       Def openFile(self):
       """Pops up an open file dialogm and if a file is selected, displays its text in the text area and its pathname in the title bar"""
       fList = [("Python files", "*.py"), ("Text files", "*.txt")]
       fileName = tkinter.filedialog.askopenfilename(parent = self, filetypes = fList)
       if fileName != "":
           file = open(fileName, 'r')
           text - file.read()
           file.close()
           self.outputArea.setText(text)
           self.setTitle(fileName)

