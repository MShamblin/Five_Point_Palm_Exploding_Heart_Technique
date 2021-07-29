Turtle - Blur function

def blur(image):
    """Builds and returns a new image which is a blurred copy of the argument image"""
    def tripleSum(triple1, triple2):
#1      
        (r1, g1, b1) = triple1
        (r2, g2, b3) = triple2
        return (r1 + r2, g1 + g2, b1 + b2)

    new = image.clone()
    for y in range(1, image.getHeight() - 1):
        for x in range(1, image.getWidth() - 1):
            oldP = image.getPixel(x, y)
            left = image.getPixel(x - 1, y)
            right = image.getPixel(x + 1, y)
            top = image.getPixel(x, y -1)
            bottom = image.getPixel(x, y + 1)
            sums = reduce(tripleSum, [oldP, left, right, top, bottom])
#2
            averages = tuple(map(lambda x: x // 5, sums))
#3
            new.setPixel(x, y, averages)
    return new

""" The code for blur includes some interesting design work. In the following explanation, the numbers noted 
appear to the right of the corresponding lines of code:

    At #1, the nested auxiliary function tripleSum is defined. This function expects two tuples of integers as arguments and returns a single tuple containing the sums of the values at each position.
    At #2, five tuples of RGB values are wrapped in a list and passed with the tripleSum function to the reduce function. This function repeatedly applies tripleSum to compute the sums of the tuples, until a single tuple containing the sums is returned.
    At #3, a lambda function is mapped onto the tuple of sums, and the result is converted to a tuple. The lambda function divides each sum by 5. Thus, you are left with a tuple of the average RGB values.

Although this code is still rather complex, try writing it without map and reduce , and then compare the two versions. """