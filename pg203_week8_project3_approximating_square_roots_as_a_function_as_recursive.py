def main():
    """Compares Newton's square root method result to Python's square root result"""
    data = input("Enter a positive number, or hit enter to end program: ")
    if data != "":
        number = float(data)
        estimate = newton(number)
        print("The program's estimate using the newton method is ", estimate)
        return main()   
    else:
        print("End of program")


def newton(x):
    """Newton's method to finding the square root of a number."""
    tolerance = 0.000001
    estimate = 1.0
    while True:
        estimate = (estimate + x / estimate) / 2
        difference = abs(x - estimate ** 2)
        if difference <= tolerance:
            break
    return estimate

# The entry point for program execution
if __name__ == "__main__":
    main()
