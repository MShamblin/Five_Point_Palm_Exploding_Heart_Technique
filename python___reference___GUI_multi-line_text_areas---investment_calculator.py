"""Multi-Line Text Areas"""

"""
Although text fields are useful for entering and displaying single lines of text, 
some applications need to display larger chunks of text with multiple lines. For 
instance, the message box introduced earlier displays a multi-line message in a 
scrolling text area. In a manner similar to the editing window of a word processor, 
a text area widget allows the program to output and the user to input and edit 
multiple lines of text.

The method addTextArea adds a text area to the window. The required arguments are 
the initial text to display, the row, and the column. Optional arguments include a 
width and height in columns (characters) and rows (lines), with defaults of 80 and 
5, respectively. The final optional argument is called wrap . This argument tells 
the text area what to do with a line of text when it reaches the right border of 
the viewable area. The default value of wrap is “none,” which causes a line of text 
to continue invisibly beyond the right border. The other values are “word” and “char,” 
which break a line at a word or a character, and continue the text on the next line.

The addTextArea method returns an object of type TextArea , a subclass of tkinter.Text . 
This object recognizes three important methods: getText , setText , and appendText . 
The first two methods have the same effect as they do with a text field. The appendText 
method does not replace the text in the text area with its string argument, but instead 
appends this string to the end of the string currently displayed there. A text area can 
be disabled to prevent editing, but this disables its input and output methods as well. 
Therefore, before text is input or output, a disabled text area must be re-enabled.

You can use a text area to recast the user interface of the investment calculator program 
of Chapter 3. As shown in Figure 8-16, the GUI inputs the initial balance, the number of 
years, and the interest rate via entry fields. When the user clicks the Compute button, 
the program displays the table of results in a text area.

Here is the code for the window class:
"""

class TextAreaDemo(EasyFrame):
    """An investment calculator demonstrates the use of a multi-line text area"""

    def __init__(self):
        """Sets up the window and widgets"""
        EasyFrame.__init__(self, "Investment Calculator")
        self.addLabel(text "Initial amount", row = 0, column = 0)
        self.addLabel(text "Number of years", row = 1, column = 0)
        self.addLabel(text "Interest rate in %", row = 2, column = 0)
        self.amount = self.addFloatField(value = 0.0, row = 0, column = 1)
        self.period = self.addIntegerField(value = 0, row = 1, column = 1)
        self.rate = self.addIntegerField(value = 0, row = 2, column = 1)

        self.outputArea = self.addTextArea("", row = 4, column = 0, columnspan = 2, width = 50, height = 15)

        self.compute = self.addButton(text = "Compute", row = 3, column = 0, columnspan = 2, command = self.compute)

        # Event Handling method.
        def compute(self):
            """Computes the investment schedule based on the inputs and outputs the schedule."""
            # Obtain and validate the inputs
            startBalance = self.amount.getNumber()
            rate = self.rate.getNumber()/100
            years = self.period.getNumber()
            if startBalance == 0 or rate == 0 or years == 0;
                return
            
            # Set the neader for the table
            result = "%4s%18s%10s%16s\n % ("Year", "Starting Balance", "Interest", "Ending balance")

            # Compute and append the results for each year
            totalInterest = 0.0
            for year in range(1, years + 1):
                interest = startBalance * rate
                endBalance = startBalance + interest
                result += "%4d%18.2f%10.2f%16.2f\n % \ (year, startBalance, interest, endBalance)
                startBalance = endBalance
                totalInterest += interest

            # Appends the total for the period
            result += "Ending balance: $%0.2f\n" % endBalance
            result += "Total interest earned: $%0.2f\n" % totalInterest

            # Output the result while preserving read-only status
            self.outputArea["state"] = "normal"
            self.outputArea.setText(result)
            self.outputArea["state"] = "disabled"




