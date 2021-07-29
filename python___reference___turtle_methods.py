The Turtle Methods
Turtle Method	            What It Does
t = Turtle()	            Creates a new Turtle object and opens its window.
t.home()	                Moves t to the center of the window and then points t east.
t.up()	                    Raises t ’s pen from the drawing surface.
t.down()	                Lowers t ’s pen to the drawing surface.
t.setheading(degrees)	    Points t in the indicated direction, which is specified in degrees. East is 0 degrees, 
                                north is 90 degrees, west is 180 degrees, and south is 270 degrees.

t.left(degrees)             Rotates t to the left or the right by the specified degrees.
t.right(degrees)

t.goto(x, y)	            Moves t to the specified position.
t.forward(distance)	        Moves t the specified distance in the current direction.

t.pencolor(r, g, b)         Changes the pen color of t to the specified RGB value or to the specified 
                                string, such as "red" . 
t.pencolor(string)          Returns the current color of t when the arguments are omitted.

t.fillcolor(r, g, b)        Changes the fill color of t to the specified RGB value or to the specified 
                                string, such as "red" . 
t.fillcolor(string)         Returns the current fill color of t when the arguments are omitted.

t.begin_fill()              Enclose a set of turtle commands that will draw a filled shape using the 
                                current fill color.
t.end_fill()                Enclose a set of turtle commands that will draw a filled shape using the 
                                current fill color.

t.clear()	                Erases all of the turtle’s drawings, without changing the turtle’s state.
t.width(pixels)	            Changes the width of t to the specified number of pixels. Returns t ’s current 
                                width when the argument is omitted.

t.hideturtle()              Makes the turtle invisible or visible.
t.showturtle()              Makes the turtle invisible or visible.

t.position()	            Returns the current position (x, y) of t .
t.heading()	                Returns the current direction of t .
t.isdown()	                False otherwise.