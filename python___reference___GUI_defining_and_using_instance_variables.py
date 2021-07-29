"""Defining and Using Instance Variables"""

"""
Defining and Using Instance Variables
Earlier we said that methods use the parameter self to call other methods in an object’s class 
or to access that object’s instance variables. An instance variable is used to store data 
belonging to an individual object. Together, the values of an object’s instance variables make 
up its state. The state of a given window, for example, includes its title, background color, 
and dimensions, among other things. You have seen that a dictionary maintains these data within 
the window object. The window class’s __init__ method establishes the initial state of a window 
object when it is created, and other methods within that class are run to access or modify this 
state (to make the window larger, change its title, or respond to an event). These basic elements 
of a window’s state are defined and managed in the classes

breezypythongui.EasyFrame and tkinter.frame.

When you customize an existing class, you can add to the state of its objects by including new 
instance variables. You define these new variables, which must begin with the name self , 
within the class’s __init__ method. They then become visible to other methods throughout the 
class definition.

Clearly, the program must have some way to track the value of the counter, as it changes 
states after button clicks. We accomplish this by adding an instance variable to the window 
class in the __init__ method and updating this variable in the event-handling methods for 
the buttons. Here is the code for the CounterDemo class:
"""

class CounterDemo(EasyFrame):
    """Illustrates the use of a counter with an instance variable"""

    def __init__(self):
        """Sets up the window, label, and buttons"""
        EasyFrame.__init__(self, title = "Counter Demo")
        self.setSize(200, 75)

        # Instance variable to track the count
        self.count = 0

        # A label to display the count in the first row.
        self.label = self.addLabel(text = "0", row = 0, column = 0, sticky = "NSEW", columnspan = 2)

        # Two command buttons.
        self.addButton(text = "Next", row = 1, column = 0, command = self.next)
        self.addButton(text = "Reset", row = 1, column = 1, command = self.reset)

        # Methods to handle user events.
        def next(self):
            """Increments the count and updates the display."""
            self.count += 1
            self.label["text"] = str(self.count)

        def resst(self):
            """Resets the count to 0 and updates the display"""
            self.count = 0
            self.label["text"] = str(self.count)

"""
The separation of the code for setting up and managing the user interface from the code 
for computation and managing the data is a common design pattern seen in many GUI-based programs. 
"""
