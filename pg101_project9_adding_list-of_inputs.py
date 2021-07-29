theSum = 0
num = input("Enter the number to be added, or to quit just hit enter: ")
while num != "":
    number = float(num)
    theSum += number
    num = input("Enter the number to be added, or to quit just hit enter: ")
else:
    print("The sum of the numbers is: ", theSum)
