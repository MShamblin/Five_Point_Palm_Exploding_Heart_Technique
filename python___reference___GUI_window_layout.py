Window Layout

class LayoutDemo(EasyFrame):
    """Displays labels in the quadrants"""

    def __init__(self):
        """Sets up the window and the labels."""
        EasyFrame.__init__(self):
        self.addLabel(text = "(0, 0)", row = 0, column = 0)
        self.addLabel(text = "(0, 1)", row = 0, column = 1)
        self.addLabel(text = "(1, 0)", row = 0, column = 0)
        self.addLabel(text = "(1, 1)", row = 0, column = 1)

"""
Types of Window Components and Their Attributes
GUI programs use several types of window components, or widgets as they are commonly called. These include labels, 
entry fields, text areas, command buttons, drop-down menus, sliding scales, scrolling list boxes, canvases, and many 
others. The breezypythongui module includes methods for adding each type of window component to a window. Each 
such method uses the form:

seld.addComponentType(<arguments>)

When this method is called, breeypythongui
    Creates an instance of the requested type of window component
    Initializes the component’s attributes with default values or any values provided by the programmer
    Places the component in its grid position (the row and column are required arguments)
    Returns a reference to the component

The window components supported by breezypythongui are either of the standard tkinter types, such as Label , 
Button , and Scale , or subclasses thereof, such as FloatField , TextArea , and EasyCanvas . A complete 
list is shown in Table 8-2. Parent classes are shown in parentheses.


Window Components in breezypythongui
Type of Window Component	                Purpose
Label                                       Displays text or an image in the window.
IntegerField(Entry)                         A box for input or output of integers.
FloatField(Entry)                           A box for input or output of floating-point numbers.
TextField(Entry)                            A box for input or output of a single line of text.
TextArea(Text)                              A scrollable box for input or output of multiple lines of text.
EasyListbox(Listbox)                        A scrollable box for the display and selection of a list of items.
Button                                      A clickable command area.
EasyCheckbutton(Checkbutton)                A labeled checkbox.
Radiobutton                                 A labeled disc that, when selected, deselects related radio buttons.
EasyRadiobuttonGroup(Frame)                 Organizes a set of radio buttons, allowing only one at a time to be selected.
EasyMenuBar(Frame)                          Organizes a set of menus.
EasyMenubutton(Menubutton)                  A menu of drop-down command options.
EasyMenuItem                                An option in a drop-down menu.
Scale                                       A labeled slider bar for selecting a value from a range of values.
EasyCanvas(Canvas)                          A rectangular area for drawing shapes or images.
EasyPanel(Frame)                            A rectangular area with its own grid for organizing window components.
EasyDialog(simpleDialog.Dialog)             A resource for defining special-purpose popup windows.

"""