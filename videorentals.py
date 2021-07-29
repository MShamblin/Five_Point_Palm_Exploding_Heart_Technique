"""
Program: Video Rental Cost Calculator   
Author: Mike Shamblin

Compute the total cost of video rentals for Five Star Retro Video.

1. Significant constants
        new video rental = $3.00
        old video rental - $2.00
2. The inputs are
        number of new video rentals
        number of old video rentals
3. Computations:
        number of new video rentals * $3.00
        number of old video rentals * $2.00
        total cost of all video rentals per customer
4. The outputs are
        total cost of video rentals
"""


nvideo = input("Enter the number of new video rentals: ")
ovideo = input("Enter the number of old video rentals: ")
tcnv = float(nvideo) * 3.00
tcov = float(ovideo) * 2.00 
tc = tcnv + tcov
print("The total cost of all the rentals are: ", tc)


