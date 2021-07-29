"""Using Nested Frames to Organize Components"""

"""
Suppose that a GUI requires a row of three command buttons beneath two columns of labels and text fields

A more natural design decomposes the window into two nested frames, sometimes called panels. Each panel 
contains its own independent grid. The top panel contains a 2-by-2 grid of labels and entry fields, 
whereas the bottom panel contains a 1-by-3 grid of buttons. The breezypythongui method addPanel adds a 
panel to the window at a given row and column in the window’s grid. This method returns an instance of 
the EasyPanel class, so you can add widgets to it just as if it were a top-level window. Because 
EasyPanel is a descendant of the tkinter.Frame class, and has almost the same interface as the 
EasyFrame class, you can run many of the same methods on a panel object that you run on a top-level 
window object. The user interface for a new version of the program that organizes the widgets in two 
panels is shown in Figure 8-15. Note that we have added background colors gray and black to the panels 
for emphasis.

Here is the code for laying out the GUI
"""

class PanelDemo(EasyFrame):

    # Create the main frame
    EasyFrame.__init__(self, "Panel Demo - v2")

    # Create the nested frame for the data panel
    dataPanel = self.addPanel(row = 0, column = 0, background = "gray")

    #create and add widgets to the data panel
    dataPanel.addLabel(text = "Label 1", row = 0, column = 0, background = "gray")
    dataPanel.addTextField(text = "Text1", row = 0, column = 1)
    dataPanel.addLabel(text = "Label 2", row = 1, column = 0, background = "gray")
    dataPanel.addTextField(text = "Text2", row = 1, column = 1)

    # Create the nested frame from the button panel
    buttonPanel = self.addPanel(row = 1, column = 0, background = "black")

    # Create and add buttons to the button panel
    buttonPanel.addButton(text = "B1", row = 0, column = 0)
    buttonPanel.addButton(text = "B2", row = 0, column = 1)
    buttonPanel.addButton(text = "B3", row = 0, column = 2)

"""
As you can see from this code, the grids of the two panels are independent, as multiple 
widgets appear to be placed in the same rows and columns. When you design a complex 
interface like this one, be sure to draw a sketch of the panels with their grids, so you 
can determine the positions of the widgets and eliminate some guesswork.
"""