Turtle - Manipulating a Turtle's Screen

>>>from turtle import Turtle
>>>t = Turtle
>>>t.screen.bgcolor("orange")
>>>x = t.screen.window_width() // 2
>>>y = t.screen.window_height() // 2
>>>print((-x, y), (x, -y))

As mentioned earlier, a Turtle object is associated with instances of the classes 
Screen and Canvas , which represent the turtle’s window and the drawing area 
underneath it. The Screen object’s attributes include its width and height in pixels, 
and its background color, among other things. You access a turtle’s Screen object 
using the notation t.screen , and then call a Screen method on this object. The methods 
window_width() and window_height() can be used to locate the boundaries of a turtle’s 
window. The following code resets the screen’s background color, which is white by 
default, to orange, and prints the coordinates of the upper left and lower right 
corners of the window:

