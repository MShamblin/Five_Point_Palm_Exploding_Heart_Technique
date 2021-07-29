
from typing import Sequence


def main():
    seq = list(range(0, 20, 2))
    printAll(seq)
    print("End of line")

def printAll(seq):
    print(seq)
    if seq:
        print(seq[0])
        printAll(seq[1:])

if __name__ == "__main__":
    main()