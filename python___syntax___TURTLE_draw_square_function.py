"""Turtle - draw square function"""

from turtle import Turtle

def square(t, length):
	"""Draws a square with the given length"""
	for count in range(4):
		t.forward(length)
		t.left(90)

def main():
    t = Turtle()
    t.shape("turtle")
    square(t, 200)

if __name__ == "__main__":
    main()
