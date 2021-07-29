import math
side1 = 0
side2 = 0
side3 = 0
side1 = int(input("Enter the length of the first side of the triangle:  "))
side2 = int(input("Enter the length of the second side of the triangle:  "))
side3 = int(input("Enter the length of the third side of the triangle:  "))
if side1 == side2 and side2 == side3:
    print("All of the sides are equal.  Therefore, this is an equalateral triangle.")
else:
    print("All of the triangle sides are not equal to each another.  Therefore, this is NOT an equalateral triangle.")


