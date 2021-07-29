#create list of numbers

a1 = int(input("Enter number 1 of 6:"))
a2 = int(input("Enter number 2 of 6:"))
a3 = int(input("Enter number 3 of 6:"))
a4 = int(input("Enter number 4 of 6:"))
a5 = int(input("Enter number 5 of 6:"))
a6 = int(input("Enter number 6 of 6:"))

import statistics
thislist = [a1, a2, a3, a4, a5, a6]

print("The list of numbers for this set: ", thislist)

m1 = statistics.median(thislist)
print("median: ", m1)

m2 = statistics.mode(thislist)
print("mode: ", m2)

m3 = statistics.mean(thislist)
print("mean: ", m3)