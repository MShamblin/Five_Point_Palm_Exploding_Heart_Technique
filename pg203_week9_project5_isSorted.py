
from typing import List

def main():
    startlist = input("Enter a sequence of numbers, no spaces:")
    #bgin = [50, 20, 30, 40]
    bgin = list(startlist)
    end = list(startlist)
    end.sort()
    isSorted(bgin, end)


def isSorted(bgin, end):
    print("bgin: ", bgin)
    print("end:  ", end)
    #a = 0
    #for index in range(len(bgin)):
    if bgin == end:
        print("True")
        #a = a + 1
    else:
        print("False")
    return

if __name__ == "__main__":
    main()




