Turtle - Draw a Radial Hexagon in IDLE

>>>from polygons import *               # import all functions
>>>from turtle import Turtle
>>>t = Turtle()
>>>t.pencolor("blue")
>>>t.hideturtle()
>>>square(t, 50)                        # embed a square in a hexagon
>>>hexagon(t, 50)
>>>t.clear()                            # erase all drawings
>>>radialHexagon(t, 10, 50)                 