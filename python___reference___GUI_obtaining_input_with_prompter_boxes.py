"""Obtaining Input with Prompter Boxes"""

"""
You have seen the advantages of displaying fields for multiple inputs 
in the same window: you can enter them in any order and change just one 
or two of them to explore “what if” situations in data processing. However, 
occasionally you might want to guide the user rigidly through a sequence 
of inputs, in the manner of terminal-based programs. For example, at 
start-up a program might prompt the user for a username and then for a 
password, after launching the main window of the application. GUI 
applications use a popup dialog called a prompter box for this purpose.

The prompter box displays a title, a message for the prompt, an entry 
field for the user’s input, and a button to submit the input. The entry 
field can have some optional initial text. You popup a prompter box by 
calling the EasyFrame method prompterBox with the appropriate arguments. 
When the user closes the dialog by clicking the OK button or the dialog’s 
close disc, the method returns the contents of the entry field. The 
following program simply displays the user’s input in a label.
"""

class PrompterBoxDemp(EasyFrame):

    def __init__(self):
        """Sets up the window and widgets"""
        EasyFrame.__init__(self, title = "Prompter Box Demo, width = 300, height = 100")
        self.label = self.addLabel(text = "", row = 0, column = 0, sticky = "NSEW")
        self.addButton(text = "Username", row = 1, column = 0, command = self.getUserName)

    def getUsername(self):
        text = self.prompterBox(title = "Input Dialog", promptString = "Your username:")
        self.label["text"] = "Hi " + name + "!"



















