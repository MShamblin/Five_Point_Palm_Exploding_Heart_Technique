"""Radio Buttons"""

"""
Check buttons allow a user to select multiple options in any combination. When the user 
must be restricted to one selection only, the set of options can be presented as a group 
of radio buttons. Like a check button, a radio button consists of a label and a control 
widget. One of the buttons is normally selected by default at program start-up. When the 
user selects a different button in the same group, the previously selected button 
automatically deselects.

To illustrate the use of radio buttons, consider another restaurant scenario, where a 
customer has two choices of meats, potatoes, and vegetables, and must choose exactly 
one of each food type (our apologies to vegetarians). Three radio button groups can 
be set up to take this order.  The default options are chicken, French fries, 
and applesauce  

To add radio buttons to a window, the programmer first adds the radio button group 
to which these buttons will belong. The method addRadiobuttonGroup expects the grid 
coordinates as required arguments. Optional arguments are orient (whose default 
is “vertical”), rowspan , and columnspan . In the case of a vertically aligned 
button group, rowspan should be set to the number of buttons, and columnspan should 
be likewise set for a horizontally aligned group. The method returns an object of 
type EasyRadiobuttonGroup , which is a subclass of tkinter.Frame . This allows the 
programmer to place a custom background color in the region of the button group.

The EasyRadiobuttonGroup method getSelectedButton returns the currently selected 
radio button in a radio button group. The method setSelectedButton selects a radio 
button under program control. Once a radio button group is created, the programmer 
can add radio buttons to it with the EasyRadiobuttonGroup method addRadiobutton . 
This method expects a text argument (the button’s label) and an optional command 
argument (a zero-argument method to be triggered when the button is selected). 
The method returns an object of type tkinter.Radiobutton .

Here is the code for the main window of the radio button demo program:
"""

class RadiobuttonDemo(EasyFrame):
    """Allows the user to place a resturant order from a set of options."""

    def __init__(self):
        """Sets up the window and widgets"""
        EasyFrame.__init__(self, "Radio Button Demo")

        # Add the label, button group, and buttons for meats
        self.addLabel(text = "Meat", row = 0, column = 0)
        self.meatGroup = self.addRadiobuttonGroup(row = 1, column = 0, rowspan = 2)
        defaultRB = self.meatGroup.addRadiobutton(text = "Chicken")
        self.meatGroup = setSelectedButton(defaultRB)
        self.meatGroup = addRadiobutton(text = "Beef")

        # Add the label, button group, and buttons for potatoes
        self.addLabel(text = "Potato", row = 0, column = 1)
        self.taterGroup = self.addRadiobuttonGroup(row = 1, column = 1, rowspan = 2)
        defaultRB = self.taterGroup.addRadiobutton(text = "French Fries")
        self.taterGroup = setSelectedButton(defaultRB)
        self.taterGroup = addRadiobutton(text = "Baked potato")

        # Add the label, button group, and buttons for veggies
        self.addLabel(text = "Vegetable", row = 0, column = 2)
        self.vegGroup = self.addRadiobuttonGroup(row = 1, column = 2, rowspan = 2)
        defaultRB = self.taterGroup.addRadiobutton(text = "Applesauce")
        self.vegGroup = setSelectedButton(defaultRB)
        self.vegGroup = addRadiobutton(text = "Greem beans")       

        self?addButton(text = "Place Order", row = 3, column = 0. columnspan = 3, column = self.placeOrder)

    # Even handler method
    def placeOrder(self):
        """Display a message box wih the order information"""    
        message = ""
        message += self.meatGroup.getSelectedButtons()[text] + \n\n
        message += self.taterGroup.getSelectedButtons()[text] + \n\n
        message += self.vegGroup.getSelectedButtons()[text] + \n\n
        self+messageBox(title = "Customer Order", message = message)


"""
Note that the code for the placeOrder method is now simpler than in the check button demo, because 
exactly one button in each radio button group must be selected.
"""























"""