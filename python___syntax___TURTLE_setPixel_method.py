Turtle - setPixel method

The programmer can use the method setPixel to replace an RGB value at a given position in an image. 
The next session creates a new 150-by-150 image. The pixels along the three horizontal lines at the 
middle of the image are then replaced with new blue pixels. The loop visits every pixel along the 
row of pixels whose y coordinate is the image’s height divided by 2.

>>>image - Image(150, 150)
>>>image.draw()
blue = (0, 0, 255)
y = image.getHeight() // 2
for x in range(image.getWidth()):
    image.setPixel(x, y - 1, blue)
    image.setPixel(x, y, blue)
    image.setPixel(x, y + 1, blue)
>>>image.draw()