"""
Program: Surface Area of Cube   
Author: Mike Shamblin

Compute the surface area of a cube.

1. Significant constants
        must be a cube
2. The inputs are
        length of one edge of the cube
3. Computations:
        length * 6 ^ 2
4. The outputs are
       The surface area of cube
"""


lngth = input("Enter the length of one side: ")
sa = float(lngth) ** 2 * 6
print("The surface area of the cube is: ", sa)


