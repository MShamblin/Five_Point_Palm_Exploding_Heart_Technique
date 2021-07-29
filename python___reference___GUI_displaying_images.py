"""Diplaying Images"""

from breezypythongui import EasyFrame
from tkinter import PhotoImage
from ikinter.font import Font

class ImageDemo(EasyFrame):
    """Displays an image and a caption."""

    def __init__(self):
        """Sets up the window and the widgets."""
        EasyFrame.__init__(self, title = "Image Demo")
        self.setResizable(False);
        imageLabel = self.addLabel(text = "", row = 0, column = 0, sticky = "NSEW")

    # Load the image and associate it with the image lable.
    self.image = PhotoImage(file = "smaokey.gif")
    imageLabel["image"]] = self.image

    # Set the font and the color of the caption.
    font = Font(family = "Verdana", size = 20, slant = "italic")
    textLabel["font"] = font
    textLabel["foreground"] = "blue"



    The tkinter.Label Attributes
Label Attribute	            Type of Value
image                       A PhotoImage object (imported from tkinter.font ). Must be loaded from a GIF file.
text                        A string.
background                  A color. A label’s background is the color of the rectangular area enclosing the text of the label.
foreground                  A color. A label’s foreground is the color of its text.
font                        A Font object (imported from tkinter.font ).