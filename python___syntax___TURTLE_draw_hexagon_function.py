"""Turtle - draw hexagon function"""


from turtle import Turtle

def hexagon(t, length):
	"""Draws a hexagon with the given length"""
	for count in range(6):
		t.forward(length)
		t.left(60)

def main():
    t = Turtle()
    t.shape("turtle")
    hexagon(t, 50)

if __name__ == "__main__":
    main()
