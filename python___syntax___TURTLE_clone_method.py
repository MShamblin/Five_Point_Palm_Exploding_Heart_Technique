Turtle - Clone Method   

>>>from images import Image
>>>image = Image("smokey.gif")
>>>image.draw()
>>>newImage = image.clone()         # Create a copy of image
>>>newImage.draw()
>>>grayscale(newImage)              # Change in second window only
>>>newImage.draw()
>>>image.draw()                     # Verify no change to original