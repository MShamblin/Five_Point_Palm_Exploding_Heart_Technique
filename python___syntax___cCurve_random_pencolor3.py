
from turtle import Turtle, tracer, update
from turtle import Screen
import random


def cCurve(t, x1, y1, x2, y2, level):
    
    def drawLine(x1, y1, x2, y2):
        t.up()
        t.goto(x1, y1)
        t.down()
        t.goto(x2, y2)
        screen = Screen()
        screen.colormode(255)
        t.pencolor(random.randint(0, 255), random.randint(0,255), random.randint(0, 255))

    if level == 0:
        drawLine(x1, y1, x2, y2)
    else:
        xm = (x1 + x2 + y1 - y2) // 2
        ym = (x2 + y1 + y2 - x1) // 2
        cCurve(t, x1, y1, xm, ym, level - 1)
        cCurve(t, xm, ym, x2, y2, level - 1)

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
