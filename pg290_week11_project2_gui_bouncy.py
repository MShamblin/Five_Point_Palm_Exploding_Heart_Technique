

from breezypythongui import EasyFrame, N
import math

class Bouncy(EasyFrame):

    def __init__(self):
        EasyFrame.__init__(self, title = "Tax Calculator")
        self.addLabel(text = "Initial Height", row = 0, column = 0)
        self.inputField1 = self.addFloatField(value = 0.0, row = 0, column = 1, width = 30)
        self.addLabel(text = "Number of times to bounce", row = 1, column = 0)
        self.inputField2 = self.addIntegerField(value = 0, row = 1, column = 1, width = 15)
        self.addButton(text = "Compute", row = 2, column = 0, columnspan = 2, command = self.bounciness)
        self.addLabel(text = "Total Distance Traveled", row = 3, column = 0)
        self.outputField = self.addFloatField(value = 0.0, row = 3, column = 1, width = 30, precision = 2, state = "readonly")
        
    def bounciness(self):
        bounceReturn = 0
        heightDrop = 0
        travelDistance = 0
        dieRate = 0.6
        heightDrop = self.inputField1.getNumber()
        numBounces = self.inputField2.getNumber()
        travelDistance = heightDrop + 2*(dieRate(1-(dieRate)**numBounces)/(1-dieRate))
        result = travelDistance
        self.outputField.setNumber(result)



def main():
    Bouncy().mainloop()

if __name__ == "__main__":
    main()



