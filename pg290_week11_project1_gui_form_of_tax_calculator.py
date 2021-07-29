
from breezypythongui import EasyRadiobuttonGroup, HORIZONTAL, Tkinter
from breezypythongui import EasyFrame
import math

class TaxRateCalculator(EasyFrame):

    def __init__(self):
        EasyFrame.__init__(self, title = "Tax Calculator")
        self.addLabel(text = "Gross Income", row = 0, column = 0)
        self.inputField1 = self.addFloatField(value = 0.0, row = 0, column = 1, width = 30)
        self.addLabel(text = "Dependents", row = 1, column = 0)
        self.inputField2 = self.addIntegerField(value = 0, row = 1, column = 1, width = 15)
        self.addButton(text = "Compute", row = 2, column = 0, columnspan = 2, command = self.computeTaxableIncome)
        self.addLabel(text = "Total Tax", row = 3, column = 0)
        self.outputField = self.addFloatField(value = 0.0, row = 3, column = 1, width = 30, precision = 2, state = "readonly")
        """
        Tkinter.Frame.__init__(self)
        self.grid(row = 0, column = 0, rowspan = 1, columnspan = 4, sticky = "NSEW")
        self._commonVar = Tkinter.StringVar("")
        self._buttons = dict()
        self._orient = HORIZONTAL
        self._buttonRow = self._buttonColumn = 0

    def addRadiobutton(self, text, command = lambda : 0):
        if text in self._buttons:
            raise ValueError("Button with this label already in the group")
        button = Tkinter.Radiobutton(self, text = text, value = text,
                                     command = command,
                                     variable = self._commonVar)
        self._buttons[text] = button
        button.grid(row = self._buttonRow, column = self._buttonColumn, sticky = N+W)
        if self._orient == HORIZONTAL:
            self.rowconfigure(self._buttonRow, weight = 1)
            self._buttonRow += 1
        else:
            self.columnconfigure(self._buttonColumn, weight = 1)
            self._buttonColumn += 1
        return button

    def getSelectedButton(self):
        if not self._commonVar.get() in self._buttons:
            raise ValueError("No button has been selected yet.")
        return self._buttons[self._commonVar.get()]

    def setSelectedButton(self, button):
        self._commonVar.set(button["value"])
        """

    def computeTaxableIncome(self):
        taxRate = 0.20
        standardDeduction = 10000.0
        dependentDeduction = 3000.0
        grossIncome = self.inputField1.getNumber()
        numDependents = self.inputField2.getNumber()
        taxableIncome = grossIncome - standardDeduction - (dependentDeduction * taxRate)
        incomeTax = taxableIncome * taxRate
        result = (incomeTax)
        self.outputField.setNumber(result)



def main():
    TaxRateCalculator().mainloop()

if __name__ == "__main__":
    main()



