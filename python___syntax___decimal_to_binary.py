"""
File: decimaltobinary.py
Converts a decimal integer to a string of bits.
"""

decimal = int(input("Enter a decimal integer: "))
if decimal == 0:
    print()
else:
    print("Quotient Remainder Binary")
    bitString = ""
    while decimal > 0:
        bitString = ""
        while decimal > 0:
            remainder = decimal % 2
            decimal = decimal // 2
            bitString = str(remainder) + bitString
            print("%5d%8d%12s" % (decimal, remainder, bitString))
print("The binary representation is", bitString)

