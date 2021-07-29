Turtle - draw a radialPattern   

def radialPattern(t, n, length, shape):
    """Draws a radial pattern of n shapes with the given length."""
    for count in range(n):
        shape(t, length)
        t.left(360 / n)


>>>t = Turtle()
>>>radialPattern(t, n = 10, length = 50, shape = square)
>>>t.clear()
>>>radialPattern(t, n = 10, length = 50, shape = hexagon)