"""Text Fields - Converting Text to String"""

"""
Text Fields
A text field is appropriate for entering or displaying a single-line string of characters. The programmer 
uses the method addTextField to add a text field to a window. The method returns an object of type TextField , 
which is a subclass of tkinter.Entry . Required arguments to addTextField are text (the string to be initially 
displayed), row , and column . Optional arguments are rowspan , columnspan , sticky , width , and state .

A text field is aligned by default to the northeast of its grid cell. A text field has a default width of 
20 characters. This represents the maximum number of characters viewable in the box, but the user can 
continue typing or viewing them by moving the cursor key to the right.

The programmer can set a text field’s state attribute to “readonly” to prevent the user from editing an output field.

The TextField method getText returns the string currently contained in a text field. Thus, it serves as an 
input operation. The method setText outputs its string argument to a text field.

Our example program (textfielddemo.py) converts a string to uppercase. The user enters text into the input 
field, clicks the Convert button, and views the result in the output field. The output field is read only, 
to prevent editing the result.
"""


class TextFieldDemp(EasyFrame):
    """Converts an input string to uppercase and displays the result."""

    def __init__(self):
        """Sets up the window and widgets."""
        EasyFrame.__init__(self, title = "Text Field Demo")

        # Label and field for the input
        self.addLabel(text = "Input", row = 0, column = 0)
        self.inputField = self.addTextField(text = "", row = 0, column = 1)

        # Label and field for the output
        self.addLabel(text = "Output", row = 1, column = 0)
        self.outputField = self.addTextField(text = "", row = 1, column = 1, state = "readonly")

        # The command button
        self.addButton(text = "Convert", row = 2, column = 0, columnspan = 2, command = self.convert)

    # the event handling method for the button
    def convert(self):
        """Inputs the string, converts it to uppercase, and outputs the result."""
        text = self.inputField.getText()
        result = text.upper()
        self.outputField.setText(result)
"""
Note that the __init__ method contains about 80% of the program’s code. This method is concerned with 
setting up the window components. The actual program logic is just the three lines of code in the 
convert method. This logic, which takes input data, computes a result, and outputs this result, 
is similar to the logic of the following, ridiculously simple, terminal-based program:
"""
    text = input("Input: ")
    result = text.upper()
    print("Output: ", result)


       