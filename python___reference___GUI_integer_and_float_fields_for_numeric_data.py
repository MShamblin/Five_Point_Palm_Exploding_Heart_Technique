"""Integer and Float Fields for Numeric Data"""

"""
Although the programmer can use a text field for the input and output of numbers, the data must be 
converted to strings after input and before output. To simplify the programmer’s task, breezypythongui 
includes two types of data fields, called IntegerField and FloatField , for the input and output of 
integers and floating-point numbers, respectively.

The methods addIntegerField and addFloatField are similar in usage to the method addTextField discussed 
earlier. However, instead of an initial text attribute, the programmer supplies a value attribute. This 
value must be an integer for an integer field, but can be either an integer or a floating-point number 
for a float field. The default width of an integer field is 10 characters, whereas the default width of 
a float field is 20 characters.

The method addFloatField allows an optional precision argument. Its value is an integer that specifies 
the precision of the number displayed in the field.

The methods getNumber and setNumber are used for the input and output of numbers with integer and float 
fields. The conversion between numbers and strings is performed automatically.

Our example program takes an input integer from a field, computes the square root of this value, and 
outputs the result, rounded to the nearest hundredth, to a second field
"""


class NumberFieldDemo(EasyFrame):
    """Computes and displays the square root of an input number."""

    def __init__(self):
        """Sets up the window and widgets."""
        EasyFrame.__init__(self, title = "Number Field Demo")

        # Label and field for the input
        self.addLabel(text = "An integer", row = 0, column = 0)
        self.inputField = self.addIntegerField(value = 0, row = 0, column = 1, width = 10)

        # Label and field for the output
        self.addLabel(text = "Square root", row = 1, column = 0)
        self.outputField = self.addFloatField(value - 0.0, row - 1, column = 1, width = 8, precision = 2, state = "readonly")

        # the command button
        self.addButton(text = "Compute", row = 2, column = 0, columnspan = 2, command = self.computeSqrt)

    # the event handling method for the button
    def computeSqrt(self):
        """Inputs the integer, computes the square root, and outputs the result."""
        number = self.inputField.getNumber()
        result = math.sqrt(number)
        self.outputField.setNumber(result)

"""
The program as written will run correctly if the inputs are integers, and these integers are greater 
than or equal to 0. If the input text is not an integer or is a negative integer, Python raises an 
exception and, if the program is terminal based, it crashes (you learned about exceptions, like 
dividing by zero and using an index out of range, in earlier chapters). However, when a GUI-based 
program raises an exception, the GUI stays alive, allowing the user to edit the input and continue, 
but a stack trace appears in the terminal window.
"""        