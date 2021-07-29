Turtle - getPixel to retrieve a tuple and assign it to a tuple that contains three variables

>>>image = Image("smokey.gif")
>>>(r, g, b) = image.getPixel(0, 0)

You can now see what the RGB values are by examining the following variables:

>>>r
194
>>>g
221
>>>b
114

The task is completed by building a new tuple with the results of the computations and 
resetting the pixel to that tuple:

>>>image.setPixel(0, 0, (r + 1-, g + 10, b + 10))

