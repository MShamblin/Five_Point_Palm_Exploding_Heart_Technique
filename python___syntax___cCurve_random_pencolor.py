
from turtle import Turtle, tracer, update

import random

from polygons import radialHexagons


def cCurve(t, x1, y1, x2, y2, level):
   
    def drawLine(x1, y1, x2, y2):
        t.up()
        t.goto(x1, y1)
        t.down()
        t.goto(x2, y2)
      
    if level == 0:
        drawLine(x1, y1, x2, y2)
    else:
        xm = (x1 + x2 + y1 - y2) // 2
        ym = (x2 + y1 + y2 - x1) // 2
        cCurve(t, x1, y1, xm, ym, level - 1)
        cCurve(t, xm, ym, x2, y2, level - 1)

def pColor(rdc1, rdc2, rdc3):
    import random
    from turtle import Screen
    t = Turtle()
    screen = Screen()
    screen.colormode(255)
    rdc1 = random.randint(0, 255)
    rdc2 = random.randint(0, 255)
    rdc3 = random.randint(0, 255)
    t.pencolor(rdc1, rdc2, rdc3)


def main():
    level = int(input("Enter the level (between 1 and 8): "))
    t = Turtle()
    if level > 8:
      tracer(False)
    t.speed(0)
    t.hideturtle()
    cCurve(t, 50, -50, 50, 50, level)
    if level > 8:
      update()

if __name__ == "__main__":
   main()
