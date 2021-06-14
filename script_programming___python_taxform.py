"""
Program : taxform.py
Author: Michael Shamblin
Compute a person's income tax

Significant constants:
    tax rate
    standard deduction
    deduction per dependant

Inputs:
    gross income
    number of dependents

Computations:
    taxable income = gross income - the standard deduction - a deduction for each dependent

Outputs:
    the income tax
"""

# Initialize the constants
TAX_RATE = 0.20
STANDARD_DEDUCTION = 10000.0
DEPENDANT_DEDUCTION = 3000.0

# Request the inputs
grossIncome = float(input("Enter the gross income:  "))
numDependents = int(input("Enter the number of dependents:  "))

# Compute the income tax
taxableIncome = grossIncome - STANDARD_DEDUCTION - \
    DEPENDANT_DEDUCTION * numDependents
incomeTax = taxableIncome * TAX_RATE

# Display the income tax
print("The income tax is $" + str(incomeTax))

