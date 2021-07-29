Method for the Image Class

In this table, the variable i refers to an instance of the Image class.

The Image Methods
Image Method	                    What It Does
i = Image(filename)	                Loads and returns an image from a file with the given filename. 
                                        Raises an error if the filename is not found or the file is 
                                        not a GIF file.
i = Image(width, height)	        Creates and returns a blank image with the given dimensions. The 
                                        color of each pixel is transparent, and the filename is the 
                                        empty string.
i.getWidth()	                    Returns the width of i in pixels.
i.getHeight()	                    Returns the height of i in pixels.
i.getPixel(x, y)	                Returns a tuple of integers representing the RGB values of the 
                                        pixel at position (x, y).
i.setPixel(x, y, (r, g, b))	        Replaces the RGB value at the position (x, y) with the RGB value 
                                        given by the tuple (r, g, b) .
i.draw()	                        Displays i in a window. The user must close the window to return 
                                        control to the method’s caller.
i.clone()	                        Returns a copy of i .
i.save()	                        Saves i under its current filename. If i does not yet have a filename, 
                                        save does nothing.
i.save(filename)	                Saves i under filename . Automatically adds a .gif extension if filename 
                                        does not contain it.