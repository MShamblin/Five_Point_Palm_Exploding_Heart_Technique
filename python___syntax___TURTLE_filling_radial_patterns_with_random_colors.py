"""Turtle - Filling Radial Patterns with Random Colors"""

"""
File:  randompatterns/py
Draws a radial pattern of squares in a random fill color 
at each corner of the window
"""

from turtle import Turtle
from polygons import *
import random

def drawPattern(t, x, y, count, length, shape):
    """Draws a radial pattern with a random fill color at the given position"""
    t.begin_fill()
    t.up()
    t.goto(x, y)
    t.setheading(0)
    t.down()
    t.fillcolor(random.randint(0, 255),
                random.randint(0,255),
                random.randint(0,255))
    radialPattern(t, count, length, shape)
    t.end_fill()


def main():
    t = Turtle()
    t.speed(0)
    count = 10
    width = t.screen.window_width() // 2
    height = t.screen.window_height() // 2
    length = 30
    inset = length * 2
    drawPattern(t, -width + inset, height - inset, count, length, square)
    drawPattern(t, -width + inset, inset - height, count, length, square)
    length = 20
    drawPattern(t, width - inset, height - inset, count, length, hexagon)
    drawPattern(t, width - inset, inset - height, count, length, hexagon)

if __name__ == "__main__":
    main()
