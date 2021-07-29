"""
Program: Conversion of km to nmi   
Author: Mike Shamblin

Converting a user input variable of kilometers and outputting the same distance in nautical miles.

1. Significant constants
        A kilometer equals 1/10000 of the distance between the North Pole and the equator
        There are 90 degrees, with 60 minutes of arc each, between the North Pole and the equator
        A nautical mile is 1 minute of an arc.
2. The inputs are
        number of kilometers
3. Computations:
        kilometer * 90 degrees * 60 minutes per degree * 0.0001
4. The outputs are
        The number of nautical miles
"""


nkm = input("Enter the number of kilometers (km): ")
k = .0001
gdm = 90 * 60
nnm = float(gdm) * float(k) * float(nkm)
print("The number of nautical miles: ", nnm)


