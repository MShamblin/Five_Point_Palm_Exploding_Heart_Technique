"""Turtle - draw circle function"""

from turtle import Turtle

def drawCircle(t, length):
	"""Draws a circle with the given length"""
	for count in range(120):
		t.forward(length)
		t.left(3)

def main():
    t = Turtle()
    t.shape("turtle")
    drawCircle(t, 2.633)

if __name__ == "__main__":
    main()
