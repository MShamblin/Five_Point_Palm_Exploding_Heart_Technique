
def main():
    createnumbersfile()
    calculatenumbersfromfile()


def createnumbersfile():
    import random
    import os, os.path
    f = open(os.path.join("week9project9datafile.txt"), "w")
    for count in range(25):
        number = random.randint(1, 25)
        f.write(str(number) + '\n')
    f.close()


def calculatenumbersfromfile():
    import os, os.path
    f = open(os.path.join("week9project9datafile.txt"), 'r')
    theSum = 0
    theAvg = 0
    for line in f:
        wordlist = line.split()
        for word in wordlist:
            number = int(word)
            theSum += number
            theAvg = theSum / 25
    print("The average is", theAvg)


if __name__ == "__main__":
    main()




