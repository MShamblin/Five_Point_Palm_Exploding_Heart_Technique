import random
smaller = int(input("Enter the smaller number: "))
larger = int(input("Enter the larger number: "))
answer = random.randint(smaller, larger)
print("The random number selected between the smaller number and the larger number is: ", answer)
count = 0
while answer != larger or answer != smaller:
    count += 1
    compguess = random.randint(smaller, larger)
    print("The computer's guess is: ", compguess)
    if compguess < answer:
        print("Too small!")
        compguess = random.randint(compguess, larger)
    elif compguess > answer:
        print("Too large!")
        compguess = random.randint(smaller, compguess)
    else:
        print("Yay! I got it in ", count, " tries!")
        break
