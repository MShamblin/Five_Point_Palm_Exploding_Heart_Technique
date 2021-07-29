"""Turtle - Draw Square function"""

from turtle import Turtle

def drawSquare(t, x, y, length):
    """Draws a square with the given turtle t, an upper-left corner point (x, y), and a side's length."""
    t.up()
    t.goto(x, y)
    t.setheading(270)
    t.down()
    for count in range(4):
        t.forward(length)
        t.left(90)

def main():
    t = Turtle()
    t.shape("turtle")
    drawSquare(t, 40, 30, 20)

if __name__ == "__main__":
    main()



"""
As you can see, this function exercises half a dozen methods in the turtle’s interface. 
Almost all you need to know in many graphics applications are the interfaces of the appropriate 
objects and the geometry of the desired shapes.

Two other important classes used in Python’s Turtle graphics system are Screen , 
which represents a turtle’s associated window, and Canvas , which represents the 
area in which a turtle can move and draw lines. A canvas can be larger than its 
window, which displays just the area of the canvas visible to the human user. 
We will have more to say about these two objects later, but first let’s examine 
how to create and manipulate a turtle in the IDLE shell.
"""
