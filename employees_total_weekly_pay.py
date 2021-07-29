"""
Program: Employee Pay Calculation   
Author: Mike Shamblin

Compute the total cost of video rentals for Five Star Retro Video.

1. Significant constants
        none
2. The inputs are
        hourly wage
        number of regular hours worked
        number of overtime hours worked
3. Computations:
        (hourly wage * regular hours ) + (hourly wage * 1.5 * OT hours)
4. The outputs are
        total pay
"""

prate = input("Enter hourly wage: ")
hrs = input("Enter the number of regular hours worked: ")
othrs = input("Enter the number of overtime hours worked: ")
regpay = float(prate) * float(hrs)
otpay = float(prate) * float(othrs) * 1.5
totalpay = float(regpay) + float(otpay)
print("The total pay is : $", float(totalpay))


