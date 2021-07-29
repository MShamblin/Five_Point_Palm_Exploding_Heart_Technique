import math
side1 = 0
side2 = 0
side3 = 0
side1 = int(input("Enter the length of the first side of the triangle:  "))
side2 = int(input("Enter the length of the second side of the triangle:  "))
side3 = int(input("Enter the length of the third side of the triangle:  "))
longside = max(side1, side2, side3)
if longside == side1 and (longside ** 2) == ((side2 ** 2) + (side3 ** 2)):
    print("This is a right triangle")
elif longside == side2 and (longside ** 2) == ((side1 ** 2) + (side3 ** 2)):
    print("This is a right triangle")
elif longside == side3 and (longside ** 2) == ((side1 ** 2) + (side2 ** 2)):
    print("This is a right triangle.")
else:
    print("This is NOT a right triangle.")