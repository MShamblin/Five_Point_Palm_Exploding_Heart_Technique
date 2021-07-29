"""
Program: Momentum Calculator   
Author: Mike Shamblin

Compute the total cost of video rentals for Five Star Retro Video.

1. Significant constants
        none
2. The inputs are
        mass of object (kilograms)
        velocity of object (meters per second)
3. Computations:
        mass * velocity = momentum
4. The outputs are
        momentum of object
"""


mo = input("Enter the mass of the object (kg): ")
vo = input("Enter the velocity of the object (mps): ")
tm = float(mo) * float(vo)
print("The momentum is: ", tm)


