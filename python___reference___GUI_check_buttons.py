"""Check Buttons"""
"""
A check button consists of a label and a box that a user can select or deselect 
with the mouse. Check buttons often represent a group of several options, any 
number of which may be selected at the same time. The application program can 
either respond immediately when a check button is manipulated, or examine the 
state of the button at a later point in time.

As a simple example, let’s assume that a restaurant serves chicken dinners with 
a standard set of sides. These include French fries, green beans, and applesauce. 
A customer can omit any of the sides from her order, and vegetarians will want 
to omit the chicken. The user selects these options via check buttons and clicks 
the Place order button to place her order. A message box then pops up with a 
summary of the order

The method addCheckbutton expects a text argument (the button’s label) and an 
optional command argument (a method to be triggered when the user checks or 
unchecks the button), and returns an object of type EasyCheckbutton . The 
EasyCheckbutton method isChecked returns True if the button is checked, or 
False otherwise. 

Here is the code:
"""

class CheckbuttonDemo(EasyFrame):
    """Allows the user to place a resturant order from a set of options"""

    def __init__(self):
        """Sets up the window and widgets"""
        EasyFrame.__init__(self, "Check Button Demo")

    # Add four check buttons
    self.chickCB = self.addCheckbutton(text = "Chicken", row = 0, column = 0)
    self.taterCB = self.addCheckbutton(text = "French Fries", row = 0, column = 1)
    self.beanCB = self.addCheckbutton(text = "Green Beans", row = 1, column = 0)
    self.sauceCB = self.addCheckbutton(text = "Applesauce", row = 1, column = 1)

    # Add the command button
    self.addButton(text = "Place Order", row = 2, column = 0, columnspan = 2, command = self.placeOrder)

# Event handling method.
def placeOrder(self):
    """Displays a message box with the order information."""
    message = ""
    if self.chickCB.isChecked():
        message += "Chicken\n\n"
    if self.taterCB.isChecked():
        message += "French Fries\n\n"
    if self.beansCB.isChecked():
        message += "Green Beans\n\n"
    if self.sauceCB.isChecked():
        message += "Applesauce\n"
    if message == "": message = "No food ordered!"
    self.messageBox(title = "Customer Order", message, message)


