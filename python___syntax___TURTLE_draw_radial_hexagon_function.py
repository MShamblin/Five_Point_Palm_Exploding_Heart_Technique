"""Turtle - draw radial hexagons"""


from turtle import Turtle
from polygons import *

def radialHexagons(t, n, length):
    """Draws a radial pattern of n hexagons with the given length"""
    for count in range(n):
        hexagon(t, length)
        t.left(360 / n)


def main():
    t = Turtle()
    t.shape("turtle")
    radialHexagons(t, 10, 20)

if __name__ == "__main__":
    main()
